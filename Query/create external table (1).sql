
CREATE DATABASE SCOPED CREDENTIAL remmzytom
WITH
IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
With 
(
    LOCATION =  'https://awwstoragedatalake.blob.core.windows.net/silver',
    CREDENTIAL = remmzytom
)

CREATE EXTERNAL DATA SOURCE source_gold
With 
(
    LOCATION =  'https://awwstoragedatalake.blob.core.windows.net/gold',
    CREDENTIAL = remmzytom
)



CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)






---------------------------------
-- Create EXTernal table Extsales
--------------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales

-----------------------------


CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.calendar

--------------------------------------

CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.products

--------------------------------------

CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.returns

-----------------------------------

CREATE EXTERNAL TABLE gold.extsubcat
WITH
(
    LOCATION = 'extsubcat',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.subcat

------------------------------------

CREATE EXTERNAL TABLE gold.extTerritories
WITH
(
    LOCATION = 'extTerritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.territories



--select * from gold.r









