# Telecom-Customer-Churn
This project explores telecom customer churn data to uncover key patterns, high-risk segments, and actionable strategies for retention. Using Python for data cleaning, EDA, and visualization, we identified that month-to-month contracts, certain internet plans, and specific payment methods have significantly higher churn rates.

Overview
This project analyzes customer churn data from a telecom company to identify patterns, key drivers, and actionable strategies to reduce churn.
The analysis includes data exploration, visualization, and business insights, culminating in a presentation with recommendations for improving customer retention.

Dataset
The dataset used (Telco_Customer_Churn.csv) contains demographic, service, and account information about customers, along with churn labels.
Key columns include:

Customer ID – Unique identifier for each customer

Gender, Age – Demographic details

Contract, Internet Type, Payment Method – Service plan and payment details

Satisfaction Score, Churn Score, Total Revenue – Customer metrics

Churn – Target variable (Yes or No) indicating whether the customer left

Analysis Steps
Data Cleaning

Removed empty/unnecessary columns

Converted data types for numerical analysis

Exploratory Data Analysis (EDA)

Distribution of churn across customer segments

Churn by contract type, internet type, and payment method

Relationship between churn and satisfaction score, revenue, and age

Visualization

Created charts for each major churn driver

Highlighted correlations and trends using bar charts, histograms, and boxplots

Business Insights

Identified high-risk customer segments

Quantified churn percentages by service and payment type

Recommendations

Targeted retention campaigns

Incentives for long-term contracts

Payment method optimization

Satisfaction improvement programs

Key Insights
Month-to-month contracts have the highest churn rates

Certain internet plans and payment methods (e.g., electronic check) are more prone to churn

Customers with lower satisfaction scores and higher revenue contribute significantly to revenue loss when they churn

Older customers churn less frequently than younger segments

Deliverables
PowerPoint Presentation – Contains visualizations, insights, and recommendations

EDA Code – Python scripts for analysis and chart creation

Data Source: https://huggingface.co/datasets/aai510-group1/telco-customer-churn

Dataset – Telco_Customer_Churn.csv

Tools & Libraries
Python: Pandas, Matplotlib
