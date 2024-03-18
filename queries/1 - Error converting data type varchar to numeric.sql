UPDATE [Unicorn_Companies].[dbo].[funding]
SET [valuation] = TRY_CONVERT(DECIMAL(18, 2), [valuation])
WHERE ISNUMERIC([valuation]) = 1;

 ALTER TABLE [Unicorn_Companies].[dbo].[funding]
ALTER COLUMN [valuation] DECIMAL(18, 2);


