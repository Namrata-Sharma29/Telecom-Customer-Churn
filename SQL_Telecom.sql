CREATE DATABASE TELECOM;

USE TELECOM;

SELECT* FROM telco_customer_churn;

-- Overall Churn Rate
SELECT 
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS churn_rate_percent
FROM telco_customer_churn;

-- Churn Rate by Contract Type
SELECT 
    Contract,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY Contract
ORDER BY churn_rate_percent DESC;

-- Average Total Revenue for Churned vs Retained

SELECT 
    Churn, 
    ROUND(AVG(`Total Revenue`), 2) AS avg_total_revenue 
FROM telco_customer_churn 
GROUP BY Churn;


-- Churn Rate by Streaming Platforms

SELECT 
    `Streaming Platforms`,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY `Streaming Platforms`
ORDER BY churn_rate_percent DESC;

-- Top 5 Churn Reasons
SELECT 
    `Churn Reason`,
    COUNT(*) AS reason_count
FROM telco_customer_churn
WHERE Churn = 'Yes'
GROUP BY `Churn Reason`
ORDER BY reason_count DESC
LIMIT 5;

-- High-Risk Customers (Churn Score > 0.7 and Satisfaction ≤ 3)

SELECT 
    `Customer ID`, 
    Gender, 
    Age, 
    Contract, 
    `Payment Method`, 
    `Churn Score`, 
    `Satisfaction Score`
FROM telco_customer_churn
WHERE `Churn Score` > 0.7
  AND `Satisfaction Score` <= 3
  AND Churn = 'No';

