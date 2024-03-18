SELECT  
    c.company_id,
    c.company,
    f.funding,
	d.year_founded
FROM 
    companies c
INNER JOIN funding f ON c.company_id = f.company_id
INNER JOIN dates d ON c.company_id = d.company_id
ORDER BY 
    f.funding DESC;