--This query will retrieve all columns and rows from the Unicorn_Company_Info view, allowing you to view 
--comprehensive information about unicorn companies in a single table-like structure.

CREATE VIEW Unicorn_Company_Info AS
SELECT
    c.company_id,
    c.company,
    c.city,
    c.country,
    c.continent,
    d.joined_date,
    d.year_founded,
    f.valuation,
    f.funding,
    f.select_investors,
    i.industry
FROM
    [Unicorn_Companies].[dbo].[companies] c
JOIN
    [Unicorn_Companies].[dbo].[dates] d ON c.company_id = d.company_id
JOIN
    [Unicorn_Companies].[dbo].[funding] f ON c.company_id = f.company_id
JOIN
    [Unicorn_Companies].[dbo].[industries] i ON c.company_id = i.company_id;



--- To query the view Unicorn_Company_Info, you can use a simple SELECT statement:
SELECT *
FROM Unicorn_Company_Info;

