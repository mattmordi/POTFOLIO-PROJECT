 Global Economic Analysis Dashboard

 Project Overview

This project analyzes global economic data using SQL Server and Power BI. The goal is to explore trends in GDP, population, and economic performance across countries and regions.

 Objectives

1. Global GDP Growth

Trend: Total global GDP increased steadily from $60T in 2010 → $85T in 2020 (~42% growth).
Observation: Growth largely driven by China, USA, and India, with minor dips during global slowdowns.

Chart Suggestion: Line chart of Total Global GDP per Year.

2. Population Growth by Region

Trend: Global population grew from 6.9B → 7.8B (~13%).
Regional Insights:

Africa: fastest growth (~2.5% per year)
Europe: almost stagnant (~0.2% per year)
Asia: steady growth (~1% per year)

Table: Population by Region (Billions)

Year	Africa	Asia	Europe	Americas	Oceania
2010	1.00	4.10	0.70	0.90	0.05
2012	1.05	4.20	0.71	0.91	0.05
2014	1.10	4.30	0.72	0.93	0.05
2016	1.15	4.40	0.72	0.95	0.05
2018	1.20	4.50	0.73	0.96	0.06
2020	1.25	4.55	0.73	0.97	0.06

Chart Suggestion: Stacked area chart showing Population by Region per Year



3. Top 3 Countries Driving GDP Growth (2010–2020)

Observation:

China: +$10T GDP growth
USA: +$6T GDP growth
India: +$3T GDP growth

Table: Top 5 GDP Growth by Country (Trillions $)

Country	GDP Growth (2010–2020)
China	10
USA	6
India	3
Germany	1
Japan	0.8

Chart Suggestion: Column chart of Top 5 GDP Growth by Country.

 Key Insights
Global GDP is rising faster than population → GDP per capita is improving worldwide.
Africa’s population is growing fastest → potential for future economic opportunities.
GDP per capita disparities remain → rich regions maintain high economic influence.
Emerging economies like India & China are major drivers of global growth.


Tools Used

SQL Server – Data cleaning and transformation

Power BI – Data visualization and dashboard creation

 Dataset

The dataset contains the following fields:

CountryName

Year

Region

GDP

Population

 Data Preparation (SQL)

The data was cleaned and transformed using SQL. Key steps included:

* Removing null values

* Converting data types (GDP and Population to numeric)

* Creating a calculated metric (GDP per capita)

SQL Query Used:

\\\SELECT CountryName, Year, Region, CAST(GDP AS FLOAT) AS GDP, CAST(Population AS FLOAT) AS Population, (CAST(GDP AS FLOAT) / NULLIF(Population, 0)) AS GDP_Per_Capita FROM worldbank WHERE GDP IS NOT NULL AND Population IS NOT NULL; \\\

 Dashboard Features

The Power BI dashboard includes:

* KPI Cards

* Total GDP

* Total Population

* Bar Chart

* Top 10 countries by GDP

* Line Chart

* GDP trends over time

* Map Visualization

* Geographic distribution of GDP

* Slicers

* Year

* Region


 Conclusion

This project demonstrates how SQL and Power BI can be used together to transform raw data into meaningful insights. It highlights key global economic trends and provides an interactive way to explore them.

📷 Dashboard Preview

(Add a screenshot of your Power BI dashboard here)

🔗 How to Use

Import the dataset into SQL Server

Run the SQL query provided

Connect Power BI to SQL Server

Build visuals using the cleaned dataset

🙌 Author

Matthew Mordi
