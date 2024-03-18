ALTER TABLE [Unicorn_Companies].[dbo].[funding]
ALTER COLUMN funding DECIMAL(18, 2); -- Adjust the precision and scale according to your requirements

SELECT 
    f.select_investors AS Investor,
    COUNT(f.company_id) AS Total_Investments,
    ROUND(SUM(f.funding)/ 1000000000, 2) AS Total_Funding_in_billion
FROM 
    [Unicorn_Companies].[dbo].[funding] f
GROUP BY 
    f.select_investors
ORDER BY 
    Total_Funding_in_billion DESC;

--This query will provide you with a list of investors, the total number of investments they have made,
--and the total funding amount they have invested across unicorn companies. You can run this query in SQL Server
--Management Studio to analyze the investment patterns of top investors in unicorn companies.