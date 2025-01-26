-----------------------------
-- create view calendar
----------------------------

CREATE VIEW gold.calendar
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awwstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUERY1



-----------------------------
-- create view customers
----------------------------

CREATE VIEW gold.customers
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awwstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS QUERY1


------------------------------
-- create view products
----------------------------

CREATE VIEW gold.products
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awwstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS QUERY1

------------------------------
-- create view Returns
----------------------------

CREATE VIEW gold.returns
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awwstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS QUERY1

------------------------------
-- create view sales
----------------------------

CREATE VIEW gold.sales
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awwstoragedatalake.dfs.core.windows.net/silver/Adventureworks_Sales/',
    FORMAT = 'PARQUET'
) AS QUERY1


------------------------------
-- create view subcat
----------------------------

CREATE VIEW gold.subcat
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awwstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_ProductSubcategories/',
    FORMAT = 'PARQUET'
) AS QUERY1


------------------------------
-- create view Territories
----------------------------

CREATE VIEW gold.territories
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awwstoragedatalake.dfs.core.windows.net/silver/Adventureworks_Territories/',
    FORMAT = 'PARQUET'
) AS QUERY1


