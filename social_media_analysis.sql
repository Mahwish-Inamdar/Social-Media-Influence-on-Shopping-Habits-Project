-- Which Social Platform Drives the Most Purchases?
SELECT Answer AS social_platform, SUM(Count) AS number_of_purchases
FROM survey_data
GROUP BY Answer
ORDER BY number_of_purchases DESC;

-- Share of Shoppers That Purchased After Seeing on Social Media (Pie Chart Data)
SELECT Answer AS social_platform, 
       SUM(Count) * 100.0 / (SELECT SUM(Count) FROM survey_data) AS purchase_percentage
FROM survey_data
GROUP BY Answer;

--  Which Survey Method Influenced Social Media Responses the Most?
SELECT "Segment Type" AS survey_method, SUM(Count) AS influence_count
FROM survey_data
GROUP BY "Segment Type"
ORDER BY influence_count DESC;

--  Influence Data by Segment Type (Heatmap Table Data)
SELECT Answer AS social_platform, "Segment Type", SUM(Count) AS total_influence
FROM survey_data
GROUP BY Answer, "Segment Type"
ORDER BY social_platform, total_influence DESC;
