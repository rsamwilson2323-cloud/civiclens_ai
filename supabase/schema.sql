-- CivicLens AI — Supabase schema
-- Run in the Supabase SQL editor for your project.

create extension if not exists "uuid-ossp";

create table if not exists reports (
  id uuid primary key default uuid_generate_v4(),
  report_code text unique not null,
  issue text not null,
  category text not null,
  description text,
  ai_description text,
  severity text not null check (severity in ('Low','Medium','High','Critical')),
  confidence numeric(4,3),
  risk_score int check (risk_score between 0 and 100),
  latitude double precision,
  longitude double precision,
  location_name text,
  image_url text,
  status text not null default 'Reported'
    check (status in ('Reported','Verified','Assigned','In Progress','Resolved')),
  department text,
  community_confirmations int default 0,
  reported_by uuid references auth.users(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_reports_status on reports(status);
create index if not exists idx_reports_category on reports(category);
create index if not exists idx_reports_created_at on reports(created_at desc);
create index if not exists idx_reports_location on reports(latitude, longitude);

-- Keep updated_at current
create or replace function set_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

drop trigger if exists trg_reports_updated_at on reports;
create trigger trg_reports_updated_at
  before update on reports
  for each row execute function set_updated_at();

-- Row Level Security
alter table reports enable row level security;

-- Anyone can read reports (public civic map)
create policy "Public read access" on reports
  for select using (true);

-- Authenticated citizens can insert their own reports
create policy "Citizens can create reports" on reports
  for insert with check (auth.uid() = reported_by or reported_by is null);

-- Only admins (checked via a JWT custom claim / admins table, not a
-- frontend flag) can update status/department/etc. Adapt the WHERE
-- clause to your chosen admin-role mechanism, e.g. a separate
-- `admins` table keyed by user id, or a Supabase custom claim.
create policy "Admins can update reports" on reports
  for update using (
    exists (select 1 from admins a where a.user_id = auth.uid())
  );

-- Storage bucket for report photos
insert into storage.buckets (id, name, public)
values ('civic-reports', 'civic-reports', true)
on conflict (id) do nothing;

create policy "Public read for civic-reports images"
  on storage.objects for select
  using (bucket_id = 'civic-reports');

create policy "Authenticated users can upload civic-reports images"
  on storage.objects for insert
  with check (bucket_id = 'civic-reports' and auth.role() = 'authenticated');

-- Minimal admins table referenced above
create table if not exists admins (
  user_id uuid primary key references auth.users(id)
);
