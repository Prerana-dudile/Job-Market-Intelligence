# 📊 Job Market Intelligence 

An end-to-end **Data Analyst portfolio project** focused on analyzing job vacancies, skill demand, hiring companies, locations, and experience levels.

The project uses **Python, Pandas, PostgreSQL, SQL, and Power BI** to transform raw job-market data into meaningful insights and an interactive dashboard.

---

## 🎯 Project Objective

The objective of this project is to analyze job-market data and understand:

- Which skills are most frequently associated with job postings?
- Which companies have the highest number of job postings?
- Which locations have more job opportunities?
- How are jobs distributed across experience levels?
- Which skills are associated with Data Analyst roles?
- How does skill demand differ across experience levels?
- How frequently do Python and SQL appear together in Data Analyst vacancies?

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and analysis |
| Pandas | Data manipulation and transformation |
| PostgreSQL | Database management |
| SQL | Business and job-market analysis |
| Power BI | Interactive dashboard and visualization |
| DAX | Power BI calculations |
| Jupyter Notebook | Python analysis |
| Git & GitHub | Version control and project sharing |

---

## 📁 Project Structure

```text
Job_Market_Intelligence/
│
├── data/
│   ├── raw/
│   │   ├── vacancies_rows.csv
│   │   ├── skills_rows.csv
│   │   └── vacancy_skills_rows.csv
│   │
│   └── cleaned/
│       ├── vacancies_cleaned.csv
│       ├── skills_cleaned.csv
│       └── vacancy_skills_cleaned.csv
│
├── python/
│   └── job_market_analysis.ipynb
│
├── sql/
│   └── job_market_analysis.sql
│
├── powerbi/
│   └── Job_Market_Intelligence.pbix
│
├── screenshots/
│
└── README.md
📊 Dataset

The project uses three related datasets:

Vacancies

Contains information about job postings such as:

Job title
Company
Location
Experience level
Required experience
Job description
Published date
Skills

Contains the skills associated with job vacancies.

Vacancy Skills

A mapping table connecting vacancies with their associated skills.

Dataset Size
Dataset	Records
Vacancies	2,154
Skills	2,033
Vacancy-Skill Mappings	13,032
🔄 Project Workflow
Raw Data
   ↓
Python & Pandas
   ↓
Data Cleaning & Preparation
   ↓
PostgreSQL
   ↓
SQL Analysis
   ↓
Power BI Data Modeling
   ↓
DAX Calculations
   ↓
Interactive Dashboard
   ↓
Insights
🧹 Python Data Cleaning & Analysis

Python and Pandas were used to prepare the datasets before database analysis.

The main steps included:

Checking duplicate records
Checking missing values
Validating IDs
Cleaning text fields and whitespace
Standardizing job titles
Converting date columns to datetime
Converting experience values to numeric format
Handling missing experience-level values
Validating the cleaned datasets
Exporting cleaned CSV files

The cleaned vacancies data contained missing information in fields such as job descriptions, required experience, published dates, and locations. These values were retained where the original job posting did not provide the information.

🗄️ PostgreSQL & SQL Analysis

The cleaned datasets were loaded into a PostgreSQL database named:

job_market_intelligence
Database Tables
vacancies
skills
vacancy_skills

The tables were connected using the vacancy and skill IDs to create a relational data model.

SQL was used to analyze:

Top hiring companies
Top job locations
Experience-level distribution
Most demanded skills
Skills associated with Data Analyst jobs
Companies with Data Analyst postings
Companies hiring for Python
Vacancies with a high number of associated skills
Data Analyst vacancies associated with both Python and SQL
Example Finding

The analysis identified 640 Data Analyst vacancies associated with both Python and SQL.

📊 Power BI Dashboard

An interactive 4-page Power BI dashboard was created using the cleaned data and relationships between the three tables.

1. Overview

Provides a high-level summary of the job market.

KPIs:

Total Vacancies
Unique Companies
Total Skills
Average Skills per Job

Visuals:

Top Most Demanded Skills
Experience Level Distribution
Job Category Distribution
Top Hiring Companies
2. Skill Demand

Focuses on skill requirements across job vacancies.

KPIs:

Total Skills
Average Skills per Job

Visuals:

Top 15 Most Demanded Skills
Top 10 Skills — Entry Level
Top 10 Skills — Senior Level
Python vs SQL Demand

Filters:

Experience Level
Location
3. Jobs & Companies

Analyzes companies and locations associated with job postings.

Visuals:

Top Hiring Companies
Top Job Locations
Data Analyst Jobs by Location
Top Locations by Job Count
4. Experience & Jobs

Combines experience-level analysis with an interactive job explorer.

KPIs:

Average Required Experience
Entry-Level Jobs
Senior-Level Jobs

Visuals:

Jobs by Experience Level
Average Experience by Job Level
Job Listings Explorer

Filters:

Experience Level
Location

The Job Listings Explorer allows users to interactively explore:

Job Title
Company
Location
Experience Level
💡 Key Insights
SQL was the most frequently associated skill in the analyzed job postings.
Python was also highly represented across the dataset.
Excel, Tableau, and Power BI appeared frequently among the associated skills.
A significant number of vacancies did not specify an experience level.
Python and SQL frequently appeared together in Data Analyst vacancies.
The dataset contains job opportunities across multiple locations and experience levels.
🎓 What I Learned

This project helped me strengthen my practical understanding of:

Python and Pandas for data cleaning
Handling missing and inconsistent data
PostgreSQL database management
SQL joins and aggregations
GROUP BY and filtering techniques
Subqueries
Relational data modeling
Power BI data modeling
DAX calculations
Interactive dashboard development
Business-focused data analysis
Presenting insights through data visualization

## 🔎 Conclusion

This project provided an end-to-end experience of working with job-market data, from cleaning and analysis in Python to SQL-based exploration in PostgreSQL and interactive visualization in Power BI.

The analysis helped identify patterns in **skill demand, job opportunities, companies, locations, and experience levels**, while also strengthening practical data analytics and dashboard development skills.

👩‍💻 Author

Prerana Dudile

B.Tech Computer Science Engineering
Aspiring Data Analyst

Skills:
Python Pandas SQL PostgreSQL Power BI DAX Data Analysis Data Visualization