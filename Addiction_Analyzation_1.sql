#  What is the average number of cigarettes smoked per day by gender?

SELECT gender, AVG(smokes_per_day) AS avg_smokes_per_day
FROM addictiontable
GROUP BY gender;

#2. What is the average age people started drinking and smoking, grouped by education level?

SELECT education_level, AVG(age_started_drinking) AS avg_age_started_drinking, AVG(age_started_smoking) AS avg_age_started_smoking
FROM addictiontable
GROUP BY education_level;

# 3.  How many individuals have health issues and what percentage is that of the total?

SELECT COUNT(*) AS total_individuals,SUM(CASE WHEN has_health_issues = 'TRUE' THEN 1 ELSE 0 END) AS with_health_issues,
  ROUND(100.0 * SUM(CASE WHEN has_health_issues = 'TRUE' THEN 1 ELSE 0 END) / COUNT(*), 2) AS percentage_with_health_issues
FROM addictiontable;

# 4. What is the correlation between annual income and therapy history?

SELECT therapy_history, AVG(annual_income_usd) AS avg_income
FROM addictiontable
GROUP BY therapy_history;

# 5.  Which cities have the highest average BMI values?

SELECT city, AVG(bmi) AS avg_bmi
FROM addictiontable
GROUP BY city
ORDER BY avg_bmi DESC
LIMIT 10;



