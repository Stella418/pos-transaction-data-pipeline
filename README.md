# POS Transaction Data Pipeline & Analysis
 

---

## 📌 Overview
This project simulates a real-world POS (Point of Sale) transaction data pipeline, focusing on data cleaning, validation, storage, and analysis using SQL.  

The goal is to transform raw transactional data into a structured, reliable dataset that can support decision-making in a financial services environment.

---

## ❗ Problem Statement
Raw POS transaction data often contains inconsistencies such as:
- Duplicate or invalid transaction IDs  
- Formatting issues across columns  
- Missing or unreliable entries  

These issues make the data unsuitable for analysis and reporting without proper preprocessing.

---

## 🎯 Objective
- Clean and standardize raw transaction data  
- Validate data quality using SQL checks  
- Structure data for database storage  
- Perform analysis to uncover operational insights  
- Simulate a basic data engineering pipeline  

---

## 📊 Dataset Description

The dataset contains the following columns:

- `transaction_id` — Unique identifier for each transaction  
- `merchant_id` — Identifier for merchants  
- `amount` — Transaction value  
- `location` — Transaction location  
- `status` — Transaction outcome (`Success`, `Failed`, `Pending`)  
- `device_type` — Device used (`POS`, `Smartphone`) 
- `timestamp` — Date and time of transaction   

---

## 🧹 Data Cleaning (Google Sheets)

The dataset was cleaned and standardized using Google Sheets:

- Removed rows with invalid transaction IDs (e.g., "DUPLICATE ID")  
- Standardized status values (`Failed!` → `Failed`)  
- Removed duplicate records  
- Ensured consistent formatting across all columns  
- Handled missing values in critical fields  

---

## ✅ Data Quality Checks (SQL)

The cleaned dataset was validated in SQL Server using the following checks:

- No missing fields
- No duplicate transaction IDs  
- No invalid status values  
- All transaction amounts are valid  

All checks passed, confirming the dataset is reliable and analysis-ready.

---

## ⚙️ Pipeline Design

This pipeline simulates a simplified ETL (Extract, Transform, Load) workflow used in production data systems.

---

## 📸 Screenshots

### 1. Raw vs Cleaned Data

This shows the transformation from the raw dataset (with duplicate IDs, inconsistent status values, and formatting issues) to the cleaned dataset with standardized fields and validated entries.

---

### 2. Data Quality Checks

This demonstrates validation queries used to ensure data integrity, including checks for duplicate transaction IDs, invalid status values, and missing critical fields. All checks returned valid results.

---

### 3. Analysis Queries and Results

This shows SQL queries used to analyze the dataset, including transaction counts, status distribution, and top-performing merchants.

---

## 📈 Key Insights

- **Total transactions:** 2,698  
- **Successful:** 742  
- **Pending:** 724  
- **Failed:** 1,232 (~46% failure rate)  

### 🔍 Observations

- The failure rate is significantly high, which could indicate system-level issues such as network instability or payment processing errors.  
- Failures are distributed across device types:
  - POS: 646  
  - Smartphone: 586  
  → Suggests the issue is not device-specific  

- Transaction distribution across locations is balanced:
  - Lagos: 566 (277 failed)  
  - Enugu: 565 (256 failed)  
  - Abuja: 538 (239 failed)  
  - Kaduna: 536 (238 failed)  
  - Oyo: 493 (222 failed)  

  → Indicates no extreme regional anomalies  

- Top merchants generated significant revenue:
  - Merchant 1000: ₦7,090,981.54  
  - Merchant 1007: ₦6,724,288.59  
  - Merchant 10001: ₦6,621,814.04  
  - Merchant 10002: ₦6,577,759.54  
  - Merchant 1006: ₦6,488,619.78  

  → Suggests a small number of merchants drive a large portion of transaction value  

---

## 🛠️ Tools & Technologies

- Google Sheets (Data Cleaning)  
- Microsoft SQL Server (Data Storage & Analysis)  
- SQL (Data Validation & Querying)  

---

## 🚀 Future Improvements

- Automate the data pipeline using Python  
- Implement real-time data ingestion and validation  
- Build a monitoring dashboard for transaction success/failure rates  
- Work with larger and more realistic datasets  

---

## 💡 Conclusion

This project highlights the importance of data cleaning, validation, and structured storage in ensuring reliable analytics.  

It also demonstrates how even a simple dataset can reveal meaningful operational insights when approached with a data engineering mindset.

---

**Author:** Stella Babayemi 