# Uncovering the Dynamics of Unicorn Companies

## 1 - Introduction
Unicorn companies stand for innovation and exponential development in the quickly changing business environment of today. Investors, entrepreneurs, and the business world at large are enthralled with unicorn businesses due to their extraordinary valuations and innovative business strategies. This case study explores the world of unicorn enterprises by utilizing a comprehensive dataset that includes information about the companies, funding, investors, inception dates, and industries. The goal is to disentangle the unicorn ecosystem's fundamental dynamics, patterns, and insights, as well as to explain what unicorn companies are and their significance in the startup ecosystem.

## 2 - Dataset Overview
The dataset being examined consists of multiple linked tables, including:
- **Companies:** Information about unicorn businesses, such as name, address, and country.
- **Funding:** Details about each company's funding rounds, valuations, and chosen investors.
- **Dates:** The dates of each company's founding as well as other noteworthy occasions.
- **Industries:** Grouping businesses according to their respective industries.

## 3 - Data Analysis
Perform exploratory data analysis (EDA) to uncover insights and trends within the dataset. Some possible analysis points include:
- Distribution of unicorn companies by country/region.
- Sector-wise distribution of unicorn companies (e.g., technology, finance, healthcare).
- The relationship between valuation and sector.
- Top investors in unicorn companies and their investment patterns.
- Geographic concentration of unicorn companies and its implications.

## 4 - Methodology
The analysis employs SQL queries to extract, transform, and analyze the dataset. Techniques such as data cleaning, view creation, aggregation, and window functions are applied to derive meaningful insights into the unicorn ecosystem's funding trends and investor interests.


## 5 - Entity Relationship Diagram

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/d5023e22-2d81-485d-a163-f25ca421a921)


## 6 - Queries and Analysis:

### 1-	Data Cleaning - Convert Valuation Column:
![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/e664ebcf-21bd-424f-994b-a51934d910a4)

-This query comes first because it ensures that the valuation data is in a standardized format (decimal) before further analysis.



### 2-	Creating a View for Unicorn Company Information:

-We can encapsulate and make reusable sophisticated SQL functionality by creating a view. 
-The view offers a thorough summary of unicorn startups, covering important details like industry, funding, location, founding dates, and investors.

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/3167ef4a-e6f0-4283-8a98-0fb1e2a49722)



### 3 -	Top Investors and Their Investments:

- Analyzing top investors provides insights into investment patterns and key players in the unicorn ecosystem.
- It's a crucial aspect for understanding the financial landscape and investor interests.

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/7661dd67-c4ca-453e-afcf-fdc028b56b61)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/fa87da5e-0a3a-479c-af57-88850ada2620)


### 4 -	Top Companies by Funding

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/649dccc7-288f-4f82-8149-a6e260f0d27e)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/49ef776f-9f41-4df5-b7d6-e350d5312b2d)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/a44cb8dc-455a-4ad7-baed-8c19102cbf1a)


### 5 -	Number of Companies by Sector:

-	Understanding the distribution of unicorn businesses across various industries is aided by sector-wise information. 
-	It offers information about the unicorn ecosystem's major sectors.

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/70b189ec-5592-4369-b5a2-308e54e3bcac)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/9cff640b-f330-4e34-8ea9-b3a5a8357ee6)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/b63b0740-6541-4da3-b74e-2f2132c8c274)


### 6 -	Calculate total valuation for each industry and present in trillions:

-Valuation is pivotal for evaluating the financial health and growth potential of companies, particularly within unicorn companies. By aggregating valuations from funding rounds, we glean insights into investor confidence, sectoral trends, and emerging opportunities. Understanding valuation trends empowers stakeholders to make informed decisions and navigate the dynamic unicorn landscape effectively.

- It offers quantitative insights into the valuation landscape, which enhances the sector-wise distribution study.

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/c8f0f0ee-abea-4402-b466-460a7e5b78ed)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/902cc0ae-d581-434e-a316-89c6edf42301)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/5d2edc04-4a0c-4431-b3ac-bb0816c8ef2d)




### 7 -	Number of Companies joined Each Year:

- This SQL Query plays a key role in the analysis of unicorn company emergence over time. It provides insights into the yearly development of unicorn companies by removing the year from the 'date joined' column and counting occurrences for each year. This helps with trend analysis, strategic decision-making, and evaluation of the dynamics and health of the startup ecosystem.

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/42b2f5c2-6b84-4fb7-bd15-e32448a23c19)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/e8a66e72-cd48-4ab4-b74d-2635023b8c81)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/b3c5d402-49aa-4ccc-863f-b421790712b9)




### 8 -	Highest company get founded:

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/308b0cca-6aad-4100-b4f9-f194bd8c2067)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/ef79db7d-8838-43a2-9089-cc5214ce8851)



### 9-	Analysis of Companies by Country with Total Valuation and Unicorn Classification: 

- This analysis provides insights into the distribution of companies across different countries based on their total valuation and unicorn classification status. The query aggregates data from the companies and funding tables, grouping results by country. The total valuation is presented in trillion dollars, rounded to two decimal places. Unicorn companies, defined as those with a valuation of $1 billion or more, are specifically counted and reported. The analysis aims to offer a comprehensive understanding of the global landscape of companies and their financial standing across various countries.

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/67163dd5-d2b1-4cdc-acd0-883c322b378d)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/fdcac121-563e-41f0-9469-4d2bc63b0f5b)



### 10-	Top 3 Funded Companies Within Each Industry:

- The top-funded businesses in each category are highlighted in this report, which offers insights into funding trends and investor preferences in particular areas.
- It helps in finding possible investment opportunities and leaders in the industry.

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/1aae5d0a-b4d0-44d0-bb19-c5398fb1ffe3)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/0a87e6b7-dcef-4af6-bf4c-5e1948169809)

- Note: Window Functions (ROW_NUMBER()): Analyzing data in a specified order within partitions, often used for ranking and comparisons.
- Common Table Expressions (CTEs): Creating temporary result sets for better query organization, readability, and reusability.


### 11-	Company Funding Categories:
- Finally, analyzing company funding categories categorizes companies based on their funding amounts, providing insights into the funding landscape and company valuations.
  
![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/ed4050f6-c32d-4259-8d1d-94ec4246b548)

![image](https://github.com/Abdelrahman-Hatem/SQL-project-unicorn-companies/assets/60587162/d397992e-3662-401e-b6d3-4593d49e323b)

- Note: CASE Statements: Implementing conditional logic to categorize or transform data based on specific conditions.


## 7-	Conclusion:
- The analysis offers a comprehensive insight into the multifaceted world of unicorn companies, elucidating key trends, dynamics, and insights within the ecosystem. As unicorn companies continue to redefine industries, disrupt traditional business models, and drive innovation, stakeholders must remain attuned to evolving market dynamics and emerging opportunities. By leveraging data-driven insights and strategic foresight, businesses, investors, and policymakers can navigate the intricacies of the unicorn landscape and capitalize on emerging trends to foster sustainable growth and innovation.
