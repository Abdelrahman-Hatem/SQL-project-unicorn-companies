SELECT  
    c.company_id,
    c.company,
    f.funding
FROM 
    companies c
INNER JOIN funding f ON c.company_id = f.company_id
ORDER BY 
    f.funding DESC;