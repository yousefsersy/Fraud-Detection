# Fraud Detection Project

In this project, I applied my SQL skills to analyze historical credit card transactions and consumption patterns to identify possible fraudulent transactions.

## Project Objectives

**Data Modeling** : Defined a database model to store credit card transactions data and created a new PostgreSQL database using this model.

**Data Engineering**: Created a database schema on PostgreSQL and populated the database using provided CSV files.

**Data Analysis**: Analyzed the data to identify possible fraudulent transactions trends and developed a detailed report of observations.

## Instructions
### Data Modeling

* Created an entity relationship diagram (ERD) by inspecting the provided CSV files.

* Designed a database model defining the necessary tables and their relationships.

* Used Quick Database Diagrams to create the ERD.

### Data Engineering

* Created a database schema based on the ERD.
  
* Defined data types, primary keys, foreign keys, and other constraints.
  
* Imported data from the corresponding CSV files into the database.
  
### Data Analysis

Part 1:
Generated queries to answer the following questions:

Isolate Transactions per Cardholder:
* Counted transactions less than $2.00 per cardholder.
* Analyzed evidence to suggest if a credit card has been hacked.

High-Value Transactions Analysis:
* Identified top 100 highest transactions made between 7:00 am and 9:00 am.
* Investigated anomalous transactions and compared fraudulent transactions during this time frame versus the rest of the day.

Merchant Analysis:
* Identified the top 5 merchants prone to being hacked using small transactions.
* Created views for each query.
Part 2:
Generated detailed trends data for specific cardholders:

Cardholders 2 and 18:
* Created a line plot representing the time series of transactions over the year for each cardholder using hvPlot.
* Created a comparative line plot for both cardholders.
* Analyzed differences in consumption patterns to identify possible fraudulent transactions.

Cardholder 25:
* Created a box plot representing expenditure data from January 2018 to June 2018 for cardholder ID 25 using hvPlot.
* Identified outliers per month and analyzed anomalies.
* Provided observations and conclusions based on the analysis.
  
## Observations and Conclusions
The detailed analysis and visualizations helped in identifying potential fraudulent transactions and trends. Specific anomalies and outliers were noted, which could suggest unauthorized transactions. The project demonstrates the application of data modeling, data engineering, and data analysis to detect fraud in credit card transactions.

## How to Run
1. Clone the repository.
2. Set up the PostgreSQL database using the provided schema.
3. Import data from the CSV files into the database.
4. Run the SQL queries to generate the required reports.
5. Use the provided Jupyter notebook to create visualizations and analyze trends.
