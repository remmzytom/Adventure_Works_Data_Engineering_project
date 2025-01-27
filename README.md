# Adventure_Works_Data_Engineering_project

<br><br>

## Azure Data Engineering & Big Data Analytics Pipeline
### Project Overview
In this project, I designed and implemented a cloud-based data engineering pipeline using Microsoft Azure. The solution follows the Medallion Architecture (Bronze, Silver, Gold layers) to efficiently ingest, process, transform, and analyze structured and unstructured data.

The pipeline leverages Azure Data Factory (ADF), Azure Data Lake Gen2, Azure Databricks (Apache Spark), and Azure Synapse Analytics to handle large-scale data processing and analytics. The final data is visualized using Power BI.

<br><br>

### Data Architecture 
I designed a scalable data architecture using Azure services to manage and process large volumes of structured and unstructured data efficiently. The architecture includes:

- Azure Data Factory for orchestrating ETL workflows.
- Azure Data Lake Gen2 for raw data storage.
- Azure Databricks & Apache Spark for data transformation.
- Azure Synapse Analytics for business intelligence and reporting.

<br><br>

### Data Ingestion & Storage
- Data Understanding : Explored the data and defined the schema to ensure efficient processing.
- Data Ingestion : Implemented the Bronze Layer in Azure Data Lake Gen2, storing raw data before transformation.
- Azure Data Factory Overview : Configured Azure Data Factory (ADF) to automate data movement across services.

<br><br>

### Data Processing & ETL Pipelines
- Azure Data Lake Gen2: Stored ingested data for further processing.
- ETL Pipelines with Azure Data Factory : Designed ETL workflows to clean, normalize, and transform data.
- Real-Time Scenarios with ADF : Implemented near real-time data processing for streaming data use cases.

<br><br>

### Data Transformation & Big Data Processing
- Azure Databricks Resource: The data transformation process began with setting up Azure Databricks, which was used for handling large-scale data processing in a distributed computing environment. This involved creating a Databricks workspace and configuring a cluster that could automatically scale based on the workload. By integrating Databricks with Azure Data Lake Storage Gen2, we ensured smooth data access and processing. This setup allowed for the efficient handling of large datasets while maintaining high performance.

- Databricks Cluster & Overview : Configured a cluster for high-performance computing.
Service Principle : Used service principals to ensure that data access remained secure and controlled throughout the pipeline.
- Data Transformation with Databricks: Performed advanced data transformations using PySpark.
Apache Spark (Silver Layer) : Used Apache Spark for cleansing and enriching data.
- PySpark : To process and transform data efficiently, PySpark was used for distributed computing. PySpark scripts were written to manage large datasets, enabling parallel processing to speed up data transformations.
- Big Data Analytics with PySpark : Finally, the transformed data was prepared for big data analytics using PySpark. The data was aggregated to generate insights, and feature engineering techniques were applied to prepare it for downstream use in machine learning or reporting.

<br><br>

### Advanced Data Storage & Analytics
- Azure Synapse Analytics (Gold Layer): Moved transformed data to Synapse Analytics for BI and reporting.
- Openrowset() function : Queried external data sources efficiently using Synapse Analytics.
- External Tables in Synapse Analytics: Created external tables to integrate data across multiple sources.

<br><br>

### Data Visualization & Reporting
- Integrate Data Warehouse with Power BI : After I had processed and transformed the data, my next step was to connect Azure Synapse Analytics with Power BI to create interactive dashboards and reports. This integration was crucial in turning raw data into meaningful insights that could be easily understood and used for decision-making. To establish the connection, I linked Power BI with Azure Synapse Analytics, allowing me to access the data directly. I used two approaches for this: DirectQuery and Import Mode. DirectQuery allowed Power BI to fetch the latest data from Synapse in real-time, ensuring the reports were always up to date. After the connection was in place, I structured the data within Power BI to improve its usability.
  



