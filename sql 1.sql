1. What is the average crop yield across all records?

SELECT AVG(Crop_Yield_MT_per_HA) AS avg_crop_yield
FROM climate;

2. Which year had the highest CO₂ emissions?
SELECT Year, CO2_Emissions_MT
FROM climate
ORDER BY CO2_Emissions_MT DESC
LIMIT 1;

3. What is the total economic impact by country?
SELECT Country, SUM(Economic_Impact_Million_USD) AS total_economic_impact
FROM climate
GROUP BY Country
ORDER BY total_economic_impact DESC;

4. Which crop type had the highest average yield?
SELECT Crop_Type, AVG(Crop_Yield_MT_per_HA) AS avg_yield
FROM climate
GROUP BY Crop_Type
ORDER BY avg_yield DESC
LIMIT 1;

5. What is the trend of average temperature over the years in India?
SELECT Year, AVG(Average_Temperature_C) AS avg_temp
FROM climate
WHERE Country = 'India'
GROUP BY Year
ORDER BY Year;

