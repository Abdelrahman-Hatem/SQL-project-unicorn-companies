SELECT
    industries.industry,
    SUM(funding.valuation) AS average_valuation,
	ROUND(SUM(funding.valuation) / 1000000000000, 2) AS average_valuation_in_Trillions

FROM
    [Unicorn_Companies].[dbo].[industries] as industries
JOIN
   [Unicorn_Companies].[dbo].[funding] as funding  ON industries.company_id = funding.company_id
GROUP BY
    industries.industry
ORDER BY average_valuation_in_Trillions DESC;
