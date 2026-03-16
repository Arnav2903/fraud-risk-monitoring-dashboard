AI-Powered Fraud Risk Monitoring Dashboard
End-to-end analytics project that detects risky financial transactions and visualizes fraud insights using machine learning and Power BI.
📌 Project Overview

Financial fraud detection is critical for fintech companies.
This project builds a fraud risk monitoring system that:

Detects suspicious transactions
Scores transaction risk using machine learning
Visualizes fraud patterns for decision-making
The project demonstrates how data analytics can move from reporting → decision intelligence.

🎯 Business Objective
Identify high-risk financial transactions and enable fraud investigation teams to:

Prioritize suspicious activity
Reduce financial losses
Understand fraud behavior patterns

📊 Dataset
Credit card transaction dataset containing:

284,807 transactions
492 fraud cases
Transaction attributes including amount, time, and engineered features

Additional simulated business attributes were added:
Customer ID
Device Type
Transaction Type
City
Customer Tenure
Risk Score

⚙️ Methodology
1️⃣ Data Preparation

Data cleaning using Python

Feature engineering

Creation of transaction-level dataset

2️⃣ Fraud Detection Model
Built Logistic Regression model using:

Transaction features
Behavioral variables
Scaled inputs
Model Performance
AUC Score: 0.98

3️⃣ Risk Scoring System
Model predictions were converted into a risk score (0–100).

Transactions classified into segments:

Segment	Description
Low Risk	Normal transactions
Medium Risk	Suspicious patterns
High Risk	Likely fraud

Fraud concentration results:

Baseline fraud rate: 0.17%
High-risk segment fraud rate: ~11.8%
This shows strong fraud isolation capability.

📈 Dashboard Features
Power BI dashboard provides:

Executive Fraud Overview
Fraud rate monitoring
Fraud loss estimation
Risk segment distribution
Fraud Behavior Analysis
Fraud patterns by device
Fraud patterns by location
Fraud patterns by transaction type
Risk Intelligence
Risk score distribution
Fraud concentration analysis
High-risk customer identification

💰 Business Impact
Risk segmentation enables prioritization of suspicious transactions.
Key insight:
Blocking top 5% high-risk transactions could potentially prevent:
~$53K in fraud losses

🛠 Tools Used
Python
SQL
Power BI
DAX
Scikit-Learn
Pandas

📊 Dashboard Preview
<img width="1451" height="852" alt="CC_1" src="https://github.com/user-attachments/assets/18293eac-4adf-4109-ab64-fb10cce002a4" />
<img width="1303" height="857" alt="CC_2" src="https://github.com/user-attachments/assets/1260bf93-a7c7-4121-95c8-d51b455b21c9" />
<img width="1511" height="862" alt="CC_3" src="https://github.com/user-attachments/assets/922bb053-c4da-4481-819d-eb1c94df9a7c" />

