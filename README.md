# 🌍 CivicLens AI

> An AI-powered **Civic Issue Detection, Reporting & Resolution Platform** that transforms photos of real-world civic problems into structured, location-aware and actionable reports.

**CivicLens AI** helps citizens report problems such as potholes, garbage accumulation, overflowing drains, damaged streetlights, road obstructions and water leakage simply by capturing or uploading a photo.

The platform uses AI to analyze the reported issue, estimate its severity, calculate an AI-assisted civic risk score, generate a structured report and visualize the issue on an interactive map.

It also provides an administrative dashboard for monitoring, prioritizing and tracking civic issues from **Reported → Verified → Assigned → In Progress → Resolved**.

---

# ✨ Features

### 👤 Citizen Features

* 📸 Upload or capture civic issue photos
* 📝 Add optional issue descriptions
* 📍 Capture or manually select location
* 🤖 AI-powered image analysis
* 🏷️ Automatic issue categorization
* ⚠️ AI-assisted severity estimation
* 📊 Civic Risk Score
* 🧾 AI-generated civic reports
* 🗺️ Interactive civic issue map
* 📋 View submitted reports
* 🔄 Track issue status
* 👥 Community issue confirmation

### 🧠 AI Features

* 👁️ Image understanding
* 🚧 Civic issue detection
* 🏷️ Automatic category classification
* ⚠️ Severity analysis
* 📊 Risk score generation
* 📝 Structured complaint generation
* 🔎 AI-assisted duplicate/related issue detection

### 🏛️ Admin Features

* 📊 Civic operations dashboard
* 📈 Issue statistics
* 🗺️ Geographic issue visualization
* 🔴 High-priority issue identification
* 🔍 Search and filtering
* 🏷️ Category filtering
* ⚠️ Severity filtering
* 🔄 Status management
* 👨‍💼 Department assignment
* 📋 Detailed issue management
* 📊 Civic hotspot visualization
* ✅ Resolution tracking

---

# 🚨 Problem

Cities and communities constantly face everyday infrastructure and civic problems:

* 🚧 Potholes
* 🗑️ Garbage accumulation
* 🌊 Overflowing drains
* 💡 Broken streetlights
* 💧 Water leakage
* 🌳 Fallen trees
* 🚗 Road obstructions
* 🛣️ Damaged roads
* 🏗️ Public infrastructure damage

Although citizens encounter these problems regularly, reporting them can be complicated.

A citizen may need to:

```text
Identify the responsible department
        ↓
Find the appropriate complaint system
        ↓
Write a detailed description
        ↓
Provide location information
        ↓
Submit the complaint
        ↓
Wait for processing
```

At the same time, authorities may receive large numbers of unstructured complaints, making it difficult to quickly identify and prioritize the most important issues.

---

# 💡 Our Solution

CivicLens AI simplifies civic reporting using **Artificial Intelligence + Computer Vision + Geospatial Intelligence**.

Instead of requiring citizens to manually describe everything:

```text
📸 Capture / Upload Photo
          ↓
🤖 AI Understands Image
          ↓
🏷️ Identify Issue
          ↓
⚠️ Estimate Severity
          ↓
📊 Calculate Risk Score
          ↓
📍 Associate Location
          ↓
🧾 Generate Structured Report
          ↓
🗺️ Display on Civic Map
          ↓
🏛️ Authority Takes Action
```

### Core idea:

> **See the Problem → Understand the Risk → Drive the Action**

---

# 🧠 How CivicLens AI Works

## 1️⃣ Capture

A citizen uploads or captures an image of a civic problem.

Example:

```text
📸 Image
   ↓
Large pothole visible on road
```

---

## 2️⃣ AI Analysis

The image is analyzed by the AI engine.

Example:

```text
Issue:
Pothole

Category:
Road Infrastructure

Severity:
High

AI Confidence:
94%
```

---

## 3️⃣ Civic Risk Score

CivicLens generates an **AI-assisted Civic Risk Score**.

Example:

```text
CIVIC RISK SCORE

██████████████████░░

89 / 100

Priority: HIGH
```

The prototype can consider factors such as:

* Issue severity
* Visible damage
* Potential safety impact
* Community confirmations
* Related reports
* Issue duration where available

The score is intended as a **decision-support prototype**, not an official government rating.

---

## 4️⃣ Location Intelligence

The report can use the browser's location permission to associate the issue with a geographic position.

The user can also manually select or enter a location when required.

The issue is then displayed on an interactive map.

---

## 5️⃣ Structured Report

Instead of a simple unstructured complaint, CivicLens creates a structured report containing:

```text
Report ID
Issue
Category
Severity
Risk Score
Location
Description
AI Analysis
Status
Date
```

---

## 6️⃣ Civic Map

Reported issues appear on an interactive map.

Example:

```text
🔴 Critical
🟠 High
🟡 Medium
🟢 Low
```

Users can filter reports by:

* Category
* Severity
* Status
* Location

---

## 7️⃣ Authority Dashboard

Authorities can view the overall civic situation through a centralized dashboard.

```text
TOTAL REPORTS       127

CRITICAL             14

HIGH PRIORITY        32

IN PROGRESS          53

RESOLVED             60
```

Admins can:

```text
View Issue
     ↓
Verify
     ↓
Assign Department
     ↓
Mark In Progress
     ↓
Resolve
```

---

# 🔎 AI-Assisted Related Issue Detection

Multiple citizens may report the same civic problem.

For example:

```text
Citizen A → Pothole → Location A

Citizen B → Pothole → Nearby Location

Citizen C → Pothole → Nearby Location
```

CivicLens can identify potentially related reports using signals such as:

* Geographic proximity
* Issue category
* Description similarity
* Existing report metadata

The system can then present:

```text
Potentially Related Issue Found

Existing Report:
CVL-2026-00091

Community Reports:
6

[View Existing Issue]
[Add My Report]
```

This helps reduce fragmented reporting.

---

# 👥 Community Confirmation

Citizens can confirm that they also observe an existing issue.

Example:

```text
COMMUNITY CONFIRMATIONS

14 people have confirmed this issue.
```

Community signals can help authorities understand which reported problems are repeatedly observed.

---

# 📊 Dashboard

CivicLens AI provides a centralized dashboard containing:

### Total Issues

Number of reported civic problems.

### Critical Issues

Issues requiring immediate attention based on the prototype's risk model.

### High Priority

Issues with elevated AI-assisted priority.

### In Progress

Issues currently being handled.

### Resolved

Issues marked as completed.

---

# 🏷️ Issue Categories

CivicLens AI supports categories such as:

* 🚧 Road Infrastructure
* 🗑️ Waste Management
* 🌊 Drainage
* 💡 Street Lighting
* 💧 Water Infrastructure
* 🚨 Public Safety
* 🚗 Road Obstruction
* 🌱 Environmental
* 📦 Other

---

# 🔄 Issue Lifecycle

Every report can move through a transparent workflow:

```text
REPORTED
    ↓
VERIFIED
    ↓
ASSIGNED
    ↓
IN PROGRESS
    ↓
RESOLVED
```

This provides a simple way to communicate the current state of a civic issue.

---

# 🗺️ Civic Hotspots

The administration dashboard can visualize areas containing multiple reported issues.

Example:

```text
CIVIC HOTSPOT

Road Infrastructure

12 Reports

High Community Activity
```

Hotspots help visualize areas where multiple civic issues are being reported.

These are prototype visualizations and are not intended to represent official municipal statistics.

---

# 💻 Technology Stack

## Frontend

* ⚛️ React.js
* 📘 TypeScript
* ⚡ Vite
* 🎨 Tailwind CSS
* 🧩 Lucide React

## Backend

* 🟢 Node.js
* 🚀 Express.js
* 🔗 REST APIs

## Artificial Intelligence

* 🤖 Gemini Vision API / Vision-capable AI
* 👁️ Image Understanding
* 🏷️ Issue Classification
* ⚠️ Severity Analysis
* 📝 Report Generation

## Database

* Supabase
* PostgreSQL

## Maps

* Leaflet.js
* OpenStreetMap
* Browser Geolocation API

## Deployment

* Vercel
* Supabase

---

# 🏗️ System Architecture

```text
                    CIVICLENS AI
                         │
                         ▼
                ┌─────────────────┐
                │ Citizen Web App │
                └────────┬────────┘
                         │
                Photo + Location
                         │
                         ▼
                ┌─────────────────┐
                │   AI ENGINE     │
                │                 │
                │ Image Analysis  │
                │ Classification  │
                │ Severity        │
                │ Risk Score      │
                │ Report          │
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │ Backend / API   │
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │ Supabase /      │
                │ PostgreSQL      │
                └────────┬────────┘
                         │
              ┌──────────┴──────────┐
              ▼                     ▼
       Civic Map              Admin Dashboard
              │                     │
              └──────────┬──────────┘
                         ▼
                  Issue Tracking
                         │
                         ▼
                     RESOLVED
```

---

# 📁 Project Structure

```text
CivicLens-AI/
│
├── src/
│   ├── components/
│   ├── pages/
│   ├── layouts/
│   ├── hooks/
│   ├── services/
│   ├── lib/
│   ├── types/
│   ├── data/
│   ├── App.tsx
│   └── main.tsx
│
├── public/
│   └── demo/
│
├── server/
│   ├── routes/
│   ├── services/
│   └── index.ts
│
├── supabase/
│   └── schema.sql
│
├── .env.example
├── README.md
├── package.json
├── vite.config.ts
└── tsconfig.json
```

---

# 🚀 Installation

### Clone the repository

```bash
git clone https://github.com/YOUR-USERNAME/CivicLens-AI.git
```

### Go into the project

```bash
cd CivicLens-AI
```

### Install dependencies

```bash
npm install
```

### Create environment file

```bash
copy .env.example .env
```

For macOS/Linux:

```bash
cp .env.example .env
```

Add the required API and database configuration.

---

# 🔐 Environment Variables

Example:

```env
VITE_SUPABASE_URL=
VITE_SUPABASE_ANON_KEY=

GEMINI_API_KEY=
```

### Important

AI API keys must remain server-side.

Do not commit real API keys to GitHub.

Add:

```text
.env
```

to `.gitignore`.

---

# ▶️ Run Locally

Start the development server:

```bash
npm run dev
```

The application will normally be available at:

```text
http://localhost:5173
```

---

# 🗄️ Supabase Setup

Create a Supabase project.

Then execute the database schema located at:

```text
supabase/schema.sql
```

Configure:

* PostgreSQL database
* Storage
* Authentication if enabled
* Row Level Security policies

Create the required
