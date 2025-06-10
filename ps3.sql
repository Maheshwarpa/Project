11.Which regions experienced the most extreme weather events overall?. 
SELECT Region, SUM(Extreme_Weather_Events) AS total_extreme_events
FROM climate
GROUP BY Region
ORDER BY total_extreme_events DESC;

12.What is the average CO₂ emissions by crop type?
SELECT Crop_Type, AVG(CO2_Emissions_MT) AS avg_co2_emissions
FROM climate
GROUP BY Crop_Type
ORDER BY avg_co2_emissions DESC;

13.What are the top 3 years with the highest average fertilizer use?
SELECT Year, AVG(Fertilizer_Use_KG_per_HA) AS avg_fertilizer_use
FROM climate
GROUP BY Year
ORDER BY avg_fertilizer_use DESC
LIMIT 3;

14.Which combination of crop and region has the best average crop yield?
SELECT Region, Crop_Type, AVG(Crop_Yield_MT_per_HA) AS avg_yield
FROM climate
GROUP BY Region, Crop_Type
ORDER BY avg_yield DESC
LIMIT 1;

15.What is the relationship between irrigation access and crop yield?
SELECT Irrigation_Access_%, Crop_Yield_MT_per_HA
FROM climate
ORDER BY Irrigation_Access_%;
