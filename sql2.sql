6. How many extreme weather events occurred each year?
SELECT Year, SUM(Extreme_Weather_Events) AS total_extreme_events
FROM climate
GROUP BY Year
ORDER BY Year;

7. Which adaptation strategies are most commonly used?
SELECT Adaptation_Strategies, COUNT(*) AS strategy_count
FROM climate
GROUP BY Adaptation_Strategies
ORDER BY strategy_count DESC;

8. What is the average pesticide and fertilizer use by region?
SELECT Region,
       AVG(Pesticide_Use_KG_per_HA) AS avg_pesticide_use,
       AVG(Fertilizer_Use_KG_per_HA) AS avg_fertilizer_use
FROM climate
GROUP BY Region;

9. Find the correlation (comparison) between soil health and crop yield.
SELECT Soil_Health_Index, Crop_Yield_MT_per_HA
FROM climate
ORDER BY Soil_Health_Index;

10. Which region had the best soil health in the most recent year?
SELECT Region, Soil_Health_Index
FROM climate
WHERE Year = (SELECT MAX(Year) FROM climate)
ORDER BY Soil_Health_Index DESC
LIMIT 1;
