# 👥 HR Analytics Attrition Dashboard

## 📊 Project Overview

This project is an **HR Analytics and Employee Attrition Analysis project** built using SQL, Python, and Power BI.

The analysis focuses on understanding employee attrition patterns and identifying the key factors associated with employee turnover across a workforce of **1,470 employees**.

The Power BI report contains four interactive pages:

- **Overview**
- **Drivers**
- **Demographics**
- **Watchlist**

The goal is to transform raw HR data into meaningful workforce insights that can support better employee retention and HR decision-making.

---

## 🎯 Project Purpose

The purpose of this project is to analyze employee attrition and identify the factors that may contribute to employees leaving an organization.

The analysis focuses on tenure, age, department, gender, overtime, job satisfaction, work-life balance, income level, promotion status, business travel, education, job role, and other employee characteristics.

The project also includes a custom SQL-based risk-scoring model to identify currently employed employees who may have a higher risk of leaving.

---

## 🛠️ Tools & Technologies

- **Power BI** – Interactive dashboard and visualization
- **Power Query** – Data cleaning and transformation
- **DAX** – KPI and measure calculations
- **SQL / PostgreSQL** – Business analysis and risk scoring
- **Python / Jupyter Notebook** – Exploratory data analysis
- **CSV** – Source dataset

---

## 📁 Project Files

```text
hr-analytics-attrition-dashboard/
│
├── README.md
│
├── data/
│   └── hr_data.csv
│
├── notebook/
│   └── hr_analytics.ipynb
│
├── sql/
│   └── hr_analytics_queries.sql
│
├── dashboard/
│   └── hr_analytics_dashboard.pbix
│
└── screenshots/
    ├── overview.png
    ├── drivers.png
    ├── demographics.png
    └── watchlist.png

---
---
## 📈 Power BI Dashboard

The Power BI dashboard contains four main pages.

### 1. Overview

The Overview page provides a high-level view of employee attrition.

### Key KPIs

- **Total Employees:** 1,470
- **Attrition Rate:** 16.12%
- **Active Employees:** 1,233
- **Average Monthly Income:** $6.50K
- **Average Tenure:** 7.01 years

### Analysis Includes

- Attrition by Tenure
- Attrition by Age
- Attrition by Department
- Attrition by Gender
- Attrition by Overtime

---

### 2. Drivers

The Drivers page analyzes factors associated with employee attrition.

### Analysis Includes

- Job Satisfaction
- Work-Life Balance
- Income Level
- Promotion Status
- Business Travel
- Overtime

---

### 3. Demographics

The Demographics page provides employee and attrition analysis across different demographic categories.

### Analysis Includes

- Education
- Job Role
- Education Field
- Job Satisfaction Ratings
- Employee Attrition by Demographic Groups

---

### 4. Watchlist

The Watchlist page uses a custom **SQL-based risk-scoring model** to identify currently employed employees who may have a higher risk of leaving.

The risk analysis helps highlight employees based on multiple attrition-related factors.

---

## 🖼️ Dashboard Preview

### Overview

![Overview](screenshots/overview.png)

### Drivers of Attrition

![Drivers](screenshots/drivers.png)

### Demographics

![Demographics](screenshots/demographics.png)

### Retention Risk Watchlist

![Watchlist](screenshots/watchlist.png)

---

## 🔍 SQL Analysis

The SQL analysis covers several HR business questions, including:

- Employee attrition analysis
- Attrition rate calculation
- Attrition by department
- Attrition by gender
- Attrition by age group
- Attrition by tenure
- Attrition by overtime
- Attrition by job role
- Attrition by education
- Attrition by business travel
- Attrition by job satisfaction
- Attrition by work-life balance
- Employee income analysis
- Promotion status analysis
- Employee risk scoring
- Identification of employees at higher risk of leaving

---

## 🧮 Key Business Questions

This project answers questions such as:

1. What is the overall employee attrition rate?
2. Which departments have the highest attrition?
3. Which job roles have higher employee turnover?
4. How does attrition vary by employee tenure?
5. How does overtime affect employee attrition?
6. How does job satisfaction relate to attrition?
7. Does work-life balance influence employee turnover?
8. How does business travel relate to attrition?
9. Which employee groups have higher attrition?
10. Which currently employed employees may have a higher risk of leaving?

---

## 🔄 Project Workflow

```text
Raw HR Data
      ↓
Data Cleaning & Preparation
      ↓
Python Exploratory Analysis
      ↓
SQL Business Analysis
      ↓
SQL Risk Scoring
      ↓
Power Query Transformation
      ↓
DAX Measures & KPIs
      ↓
Power BI Dashboard
      ↓
HR Insights & Retention Analysis

## 💡 Key Insights

- **1,470 employees** are included in the analysis.
- The overall **attrition rate is 16.12%**.
- There are **1,233 active employees**.
- Average employee tenure is approximately **7 years**.
- Sales Representatives show a high attrition rate.
- Employees working overtime show significantly higher attrition.
- Job satisfaction and work-life balance are important factors to analyze when studying employee turnover.
- The custom risk-scoring model helps identify currently employed employees who may have a higher risk of leaving.

---

## 💡 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- SQL
- PostgreSQL
- CTEs
- Subqueries
- Window Functions
- Aggregation & Grouping
- HR Analytics
- Employee Attrition Analysis
- Risk Scoring
- Employee Segmentation
- Power Query
- DAX
- KPI Development
- Power BI Dashboard Development
- Data Visualization
- Business Intelligence

---

## 🚀 How to Use

1. Import `data/hr_data.csv` into your SQL database.
2. Run `sql/hr_analytics_queries.sql` to reproduce the SQL analysis.
3. Open `notebook/hr_analytics.ipynb` to review the Python exploratory analysis.
4. Open `dashboard/hr_analytics_dashboard.pbix` in Power BI Desktop.
5. Explore the four dashboard pages:
   - Overview
   - Drivers
   - Demographics
   - Watchlist
6. Use the dashboard filters to analyze different employee segments.

---

## 🎯 Project Objective

The objective of this project is to demonstrate how raw HR data can be analyzed using **SQL and Python** and transformed into an interactive **Power BI dashboard** to understand employee attrition, identify important drivers, and support data-driven employee retention decisions.

---

## 👨‍💻 Author

**Nitin Koshti**

Data Analytics | SQL | Power BI | Excel | Python
