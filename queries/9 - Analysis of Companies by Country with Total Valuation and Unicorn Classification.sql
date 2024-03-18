SELECT 
    c.country,
    COUNT(c.company_id) AS Number_of_Companies,
	COUNT(CASE WHEN f.valuation >= 1000000000 THEN 1 END) AS Number_of_Unicorn_Companies,
    ROUND(SUM(f.valuation) / 1000000000000, 2) AS Total_Valuation_in_Trillion
    
FROM 
    companies c
JOIN 
    funding f ON c.company_id = f.company_id
GROUP BY 
    c.country
ORDER BY 
    Number_of_Companies DESC;
