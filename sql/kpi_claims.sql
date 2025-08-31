-- KPI Total Costumer Claims
SELECT COUNT(claim_insurance.charges)
FROM claim_insurance;

-- KPI Average Costumer Claims
SELECT AVG (charges)
FROM claim_insurance;

-- KPI Total Claims Customers
SELECT SUM(claim_insurance.charges)
FROM claim_insurance;

-- KPI Smoking Rate
SELECT ROUND(COUNT(CASE WHEN smoker = 'yes' THEN 1 END) * 100.0 / COUNT(smoker), 2) || '%' as SMOKING_RATE
FROM claim_insurance;

-- KPI Charges by Age Category
SELECT age_category, SUM(charges) as Total_Claims
FROM claim_insurance
GROUP BY age_category
ORDER BY SUM(charges) DESC;

-- KPI Charges by BMI Category
SELECT bmi_category, SUM(charges) as Total_Claims
FROM claim_insurance
GROUP BY bmi_category
ORDER BY SUM(charges) DESC;

-- KPI Charges by Smoker Status
SELECT smoker, AVG(claim_insurance.charges) as Average_Claims
FROM claim_insurance
GROUP BY smoker
ORDER BY AVG(charges) DESC;

-- KPI Charges by Region
SELECT region, SUM(charges) as Total_Claims
FROM claim_insurance
GROUP BY region
ORDER BY SUM(charges) DESC;

-- KPI Detail Table
SELECT sex, smoker, region, age, bmi, charges
FROM claim_insurance;