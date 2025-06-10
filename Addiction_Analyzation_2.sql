# 6.  What is the average sleep duration of people with good vs. poor mental health?

SELECT mental_health_status, AVG(sleep_hours) AS avg_sleep_hours
FROM addictiontable
GROUP BY mental_health_status;


# 7. How many people have tried to quit smoking at least once?

SELECT COUNT(*) AS people_tried_to_quit_smoking
FROM addictiontable
WHERE attempts_to_quit_smoking > 0;

# 8. What is the distribution of employment status among those with social support?

SELECT employment_status, COUNT(*) AS count
FROM addictiontable
WHERE social_support IS NOT NULL AND social_support <> 'None'
GROUP BY employment_status;

# 9. Is there a relationship between diet quality and exercise frequency?

SELECT diet_quality, exercise_frequency, COUNT(*) AS count
FROM addictiontable
GROUP BY diet_quality, exercise_frequency
ORDER BY count DESC;


# 10. What are the top 5 countries with the highest average number of drinks per week?

SELECT country, AVG(drinks_per_week) AS avg_drinks_per_week
FROM addictiontable
GROUP BY country
ORDER BY avg_drinks_per_week DESC
LIMIT 5;




