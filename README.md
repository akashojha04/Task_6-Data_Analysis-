## Project Overview
This project focuses on analyzing transactional sales data using SQL to extract meaningful business insights. The primary objective was to conduct time-based revenue analysis and evaluate order volume trends across multiple periods (Yearly, Monthly, and Quarterly). 

The analysis covers revenue aggregation, transaction volume measurement, product-level performance evaluation, and time-series trend identification.

## Objectives
  **Trend Analysis:** Analyze monthly and yearly revenue trajectories.
  **Volume Measurement:** Measure order volume using distinct order counts.
  **Product Insights:** Identify top-performing product lines and high-revenue products.
  **Time-Series Grouping:** Perform advanced grouping by Year, Month, and Quarter.
  **Data Structuring:** Apply sorting, filtering, and aggregation to export clean results for reporting.

## 🛠 Tools & Technologies Used
  **Database:** MySQL
  **Management Tool:** MySQL Workbench
  **Key SQL Functions:**
  **Aggregation:** `SUM()`, `COUNT()`, `COUNT(DISTINCT)`
  **Date Manipulation:** `EXTRACT()`, `YEAR()`, `MONTH()`, `QUARTER()`
  **Logic & Filtering:** `GROUP BY`, `HAVING`, `WHERE`, `ORDER BY`

## 📈 Key Analysis Performed
The project was executed through several critical analytical queries:

### 1. Revenue & Order Volume Analysis

**Monthly Revenue Calculation:** Summarized total sales revenue per month to identify peak performance periods.
**Yearly Trends:** Compared year-over-year growth to observe long-term business trajectory.
**Order Volume:** Measured transaction frequency using `COUNT(DISTINCT)` to ensure accuracy in multi-line orders.

### 2. Product Performance
**Top-Selling Lines:** Aggregated revenue by `productline` to determine which categories drive the most value.
**Top Products:** Identified individual product codes that contribute significantly to the bottom line.

### 3. Time-Period Deep Dives
**Highest Revenue Months:** Isolated the top-performing months for each calendar year.
**Filtering & Ranges:** Used date-range filtering to perform analysis on specific fiscal periods.
