SELECT
    i.industry AS Sector,
    COUNT(*) AS Number_of_Companies
FROM
    [Unicorn_Companies].[dbo].[industries] i
INNER JOIN
    [Unicorn_Companies].[dbo].[companies] c ON i.company_id = c.company_id
GROUP BY
    i.industry
ORDER by Number_of_Companies;

	-- Sector-wise distribution of unicorn companies. 
	-- We join the industries table with the companies table using the company_id column.