WITH RankedCompanies AS (
    SELECT
        c.company_id,
        c.company,
        i.industry,
        f.valuation,
        f.funding,
        f.select_investors,
        ROW_NUMBER() OVER (PARTITION BY i.industry ORDER BY f.funding DESC) AS FundingRank
    FROM
        [Unicorn_Companies].[dbo].[companies] c
    JOIN
        [Unicorn_Companies].[dbo].[funding] f ON c.company_id = f.company_id
    JOIN
        [Unicorn_Companies].[dbo].[industries] i ON c.company_id = i.company_id
)

SELECT
    company_id,
    company,
    industry,
    valuation,
    funding,
    select_investors,
    FundingRank
FROM
    RankedCompanies
WHERE
    FundingRank <= 3; -- Displaying top 3 funded companies within each industry



--using SQL window functions to analyze funding patterns within each sector. Here, I'll use the
--ROW_NUMBER() function to rank companies based on their funding amounts within each sector:

--Explanation of the query:

--The WITH clause defines a Common Table Expression (CTE) named RankedCompanies.

--The CTE selects relevant columns from the companies, funding, and industries tables, and uses the ROW_NUMBER() window function to assign
--a rank to each company based on its funding amount within each industry (partitioned by industry).

--The main SELECT statement retrieves columns from the CTE and filters the results to show only the top 3 funded companies within each industry.

--This query provides information on the top 3 funded companies within each industry, ordered by their funding amount. You can adjust the FundingRank condition
--in the final SELECT statement to display a different number of top-funded companies if needed.

WITH RankedCompanies AS (
    SELECT
        c.company_id,
        c.company,
        i.industry,
        f.valuation,
        f.funding,
        f.select_investors,
        ROW_NUMBER() OVER (PARTITION BY i.industry ORDER BY f.funding DESC) AS FundingRank
    FROM
        [Unicorn_Companies].[dbo].[companies] c
    JOIN
        [Unicorn_Companies].[dbo].[funding] f ON c.company_id = f.company_id
    JOIN
        [Unicorn_Companies].[dbo].[industries] i ON c.company_id = i.company_id
)
SELECT
    company_id,
    company,
    industry,
    valuation,
    funding,
    select_investors,
    FundingRank
FROM
    RankedCompanies
WHERE
    FundingRank <= 3;


