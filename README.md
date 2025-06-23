# Employee Management Database – SQL Case Study

This project simulates an Employee Management System using SQL. It involves designing a normalized relational database and writing a series of SQL queries to analyze employee, department, job, and location data for HR-related insights.

## Database Structure

Four interrelated tables were created:
- **Location**: Stores city details  
- **Jobs**: Contains job designations  
- **Departments**: Maps departments to locations  
- **Employees**: Includes employee details with job, department, and salary info

## Key Concepts Covered

- **DDL & DML**: Created and populated normalized tables with primary and foreign keys
- **Basic Queries**: Data retrieval using `SELECT`, `WHERE`, `ORDER BY`, and aliases
- **Aggregations**: Used `GROUP BY` and `HAVING` for department/job-level salary analysis
- **Joins**: Combined data across multiple tables to enrich reporting (e.g., employee with department and city)
- **Subqueries**: Retrieved advanced insights like max salaries, second highest earners, etc.
- **Conditional Logic**: Used `CASE` statements for grading salaries and conditional grouping
- **Date Functions**: Analyzed hiring trends by month and year

## Sample Use Cases

- Find employees earning above department average  
- Analyze department-wise salary distribution  
- Identify months with the highest hiring activity  
- List departments without any employees  
- Assign salary grades using conditions

## Tools Used

- SQL (Oracle/MySQL/PostgreSQL-compatible)
- Text editor or any SQL IDE (e.g., DBeaver, MySQL Workbench)

## Files Included

- `employee_management_schema.sql` – Table creation and data insertion  
- `employee_queries.sql` – All query exercises categorized by topic  
- `README.md` – Project documentation

## Use Case

Great for learning SQL fundamentals, query optimization, and relational database design in a practical HR scenario.

---

