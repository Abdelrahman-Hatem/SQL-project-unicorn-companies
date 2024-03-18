SELECT
    c.company_id,
    c.company,
    f.funding,
    CASE
        WHEN f.funding >= 1000000000 THEN 'Unicorn (Funding >= $1 billion)'
        WHEN f.funding >= 500000000 THEN 'Almost Unicorn (Funding >= $500 million)'
        ELSE 'Non-Unicorn'
    END AS Funding_Category
FROM
    [Unicorn_Companies].[dbo].[companies] c
JOIN
    [Unicorn_Companies].[dbo].[funding] f ON c.company_id = f.company_id

ORDER BY f.funding DESC;
    

-- Here's an example query that demonstrates how to use CASE to categorize companies based on their valuation into different groups:
---This query will categorize companies based on their funding amounts into different groups using if/then/else logic implemented with the CASE statement.
--- You can run this query in SQL Server Management Studio to see the funding categories for each company in your dataset.