SELECT 
    YEAR(new_date_column) AS Year,
    COUNT(*) AS num_companies
FROM 
    dates
GROUP BY 
    YEAR(new_date_column)
ORDER BY 
    num_companies DESC;


-- This query will give you a breakdown of the number of companies Joined in each year based on the data provided in the dates table.
-- You can run this query in SQL Server Management Studio to analyze the distribution of companies over time 