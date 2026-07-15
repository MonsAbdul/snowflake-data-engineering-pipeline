# End-to-End Enterprise Data Engineering Pipeline
An infrastructure-minded data engineering pipeline deployed within the Snowflake Data Cloud utilizing the **Ingestion-Transformation-Delivery (I-T-D)** architectural framework.

## 🏗️ Pipeline Architecture

### 1. Data Ingestion
* **Cloud Storage Integration**: Configured secure stages to programmatically ingest close to 1 GB of raw, transactional sales datasets directly from external Amazon AWS S3 cloud buckets using `COPY INTO` architecture.
* **Live Data Shares**: Integrated real-time, zero-maintenance global weather telemetry feeds natively via the Snowflake Marketplace to eliminate complex ETL processing overhead.

### 2. Data Transformation (SQL & Programmable Logic)
* **Relational Views**: Engineered structural, harmonized data views to blend disparate transaction and environmental datasets while enforcing strict data governance.
* **User-Defined Functions (UDFs)**: Built and compiled custom procedural SQL functions to handle automated mathematical value conversions across production datasets.

### 3. Application Delivery (Python & Analytical Interface)
* **Streamlit Integration**: Authored a native Python data application leveraging the Streamlit framework inside the cloud ecosystem to render live, interactive trend analytics and charts directly to business end-users.

## 🛠️ Technical Stack
* **Cloud Data Platform**: Snowflake Data Cloud
* **Cloud Infrastructure Provider**: Amazon Web Services (AWS S3)
* **Languages**: SQL (DDL/DML), Python 3.x
* **Application Framework**: Streamlit
