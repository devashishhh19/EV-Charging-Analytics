<div align="center">

# ⚡ EV Charging Analytics

### Data Analysis with Python, SQL & Power BI

**Collaborative project by Devashish Johareya and [Friend's Full Name]**

An end-to-end practice project exploring EV charging patterns, charging demand, infrastructure, user behavior, energy consumption, and charging costs.

</div>

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Project Workflow](#-project-workflow)
- [Dashboard Preview](#-dashboard-preview)
- [Key Analysis](#-key-analysis)
- [Tools and Technologies](#-tools-and-technologies)
- [Repository Structure](#-repository-structure)
- [How to Run the Project](#-how-to-run-the-project)
- [Team Members](#-team-members)
- [Learning Outcomes](#-learning-outcomes)
- [Data and Usage Note](#-data-and-usage-note)

## 🎯 Project Overview

This project analyzes electric vehicle (EV) charging patterns using Python, SQL, and Microsoft Power BI. The work includes data inspection and cleaning, exploratory data analysis, SQL-based business queries, and an interactive Power BI dashboard.

The analysis explores charging sessions, charger types, vehicle models, charging station locations, user types, time-based demand, energy consumption, battery state of charge, and charging costs.

This is a collaborative hands-on learning project completed by two team members.

## 🔄 Project Workflow

1. **Python – Data Cleaning and EDA:** inspected dataset structure, checked missing values and duplicates, handled selected missing and invalid battery percentage values, and explored distributions and relationships through charts.
2. **SQL – Business Analysis:** wrote queries to summarize charging sessions, energy consumption, charging cost, charger types, vehicle models, time-based demand, locations, battery gain, user behavior, and above-average energy sessions.
3. **Power BI – Dashboarding:** created report pages to present charging performance, EV charging behavior, and cost and energy analysis.

## 🖼️ Dashboard Preview

### 1. Charging Performance Overview

Includes headline KPIs, sessions by charger type, charging demand by time of day, sessions by location, and report filters.

![EV Charging Performance Overview](screenshots/ev_charging_overview.png)

### 2. EV Charging Behavior Analysis

Explores charging demand by time and day, sessions by vehicle model, user type and charger type, and energy consumption by user type.

![EV Charging Behavior Analysis](screenshots/ev_charging_behavior_analysis.png)

### 3. Cost and Energy Analysis

Includes average charging cost by charger type, energy consumption by time of day, charging duration versus energy consumption, and energy consumption versus charging cost.

![EV Cost and Energy Analysis](screenshots/ev_cost_energy_analysis.png)

## 🔍 Key Analysis

### Python
- Dataset shape, structure, summary statistics, and column inspection.
- Missing-value and duplicate checks.
- Median imputation for selected numeric columns.
- Validation and handling of out-of-range start/end battery percentages.
- Analysis of vehicle models, charger types, charging locations, average duration, and energy/cost patterns.
- Visualizations using Matplotlib and Seaborn.

### SQL
The SQL script includes queries for:
- Total charging sessions and total energy consumed.
- Average charging cost.
- Sessions by charger type.
- Energy consumption by vehicle model.
- Charging demand by time of day and day of week.
- Average charging duration by charger type.
- Charging sessions by station location.
- Average battery percentage gained by charger type.
- Charging behavior by user type.
- Sessions with above-average energy consumption.

### Power BI
- Charging performance overview.
- EV charging behavior analysis.
- Cost and energy analysis.
- Interactive report filters and KPI visuals.

## 🧰 Tools and Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and exploratory data analysis |
| Pandas & NumPy | Data manipulation and missing/invalid value handling |
| Matplotlib & Seaborn | Exploratory visualizations |
| MySQL | SQL queries and business analysis |
| Microsoft Power BI | Interactive dashboard and reporting |
| Jupyter Notebook | Python analysis environment |

## 📁 Repository Structure

```text
EV-Charging-Analytics/
│
├── README.md
├── EV_Charging_Analysis.pbix
│
├── notebooks/
│   └── EV_Charging_Analysis.ipynb
│
├── sql/
│   └── EV_Charging_Analysis.sql
│
├── screenshots/
│   ├── ev_charging_overview.png
│   ├── ev_charging_behavior_analysis.png
│   └── ev_cost_energy_analysis.png
│
└── data/
    └── ev_charging_patterns.csv   (add only if redistribution is permitted)
```

## ▶️ How to Run the Project

### 1. Python Notebook
1. Install Python and Jupyter Notebook.
2. Install the required libraries:
   ```bash
   pip install pandas numpy matplotlib seaborn
   ```
3. Place the dataset file named `ev_charging_patterns.csv` inside the `data/` folder.
4. Open `notebooks/EV_Charging_Analysis.ipynb` in Jupyter Notebook and run the cells.

### 2. SQL Analysis
1. Install MySQL and open MySQL Workbench.
2. Ensure the dataset has been imported into a database named `EV`.
3. Ensure the table is named `ev_charging_patterns` and its column names match the SQL script.
4. Open and execute `sql/EV_Charging_Analysis.sql`.

### 3. Power BI Dashboard
1. Install Microsoft Power BI Desktop.
2. Open `EV_Charging_Analysis.pbix`.
3. If Power BI asks for the data source, connect it to the permitted local dataset and refresh the report.

**Note:** The CSV dataset was not included among the files supplied for this repository package. Add it to `data/` only if you have permission to redistribute it. The notebook and SQL script require the dataset/table to be available locally.

## 🤝 Team Members

This project was completed collaboratively by:

- **Devashish Johareya**
- **Payal Borse**

We worked together on the project as a practical learning exercise involving Python, SQL, and Power BI. Update the second name with your friend's correct full name before publishing.

## 📚 Learning Outcomes

- Practiced a multi-tool data analysis workflow using Python, SQL, and Power BI.
- Performed data inspection, missing-value checks, duplicate checks, and selected data cleaning tasks.
- Used SQL aggregation, grouping, filtering, ordering, and a subquery to answer analytical questions.
- Explored charging behavior across vehicles, charger types, users, locations, and time periods.
- Built and documented a multi-page Power BI dashboard.
- Practiced collaborative project work and communicating analysis through visualizations.

## ⚠️ Data and Usage Note

This repository is intended for educational and portfolio purposes. The dataset itself was not supplied with the uploaded PBIX, notebook, and SQL files. Before making the repository public, check the dataset license and any course or source terms. Do not upload data or course materials unless redistribution is allowed.
