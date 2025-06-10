# 11. What is the average number of smoking attempts to quit by education level?

SELECT education_level, AVG(attempts_to_quit_smoking) AS avg_attempts_to_quit_smoking
FROM addictiontable
GROUP BY education_level
ORDER BY avg_attempts_to_quit_smoking DESC;


# 12. How does average sleep hours vary by employment status?

SELECT employment_status, AVG(sleep_hours) AS avg_sleep
FROM addictiontable
GROUP BY employment_status
ORDER BY avg_sleep DESC;


# 13. What is the relationship between marital status and average alcohol consumption per week?

SELECT marital_status, AVG(drinks_per_week) AS avg_drinks
FROM addictiontable
GROUP BY marital_status
ORDER BY avg_drinks DESC;


# 14. What is the average BMI grouped by diet quality?

SELECT diet_quality, AVG(bmi) AS avg_bmi
FROM addictiontable
GROUP BY diet_quality
ORDER BY avg_bmi DESC;


# 15. How many individuals with health issues also have a current therapy history?

SELECT COUNT(*) AS health_issues_with_therapy
FROM addictiontable
WHERE has_health_issues = 'TRUE' AND therapy_history = 'Current';

