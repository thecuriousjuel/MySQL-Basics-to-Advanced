-- Command to show databases
SHOW DATABASES;

-- Command to select a database
USE <database_name>;

-- Command to show tables
SHOW TABLES;

-- Command to show all data from a table
SELECT *
FROM <table_1> AS <alias>
WHERE <expression>;

-- Example

-- Example
SELECT *
FROM customers 
WHERE NOT ((birthdate >= '1990-01-01' OR points > 1000) AND state='VA'; 

-- DISTINCT keyword
SELECT DISTINCT <column_name>
FROM <table_1>


-- 
SELECT 
    <column_1> AS <alias>,
    <column_2> AS <alias>,
    <expression> AS <alias>
FROM <table_1> AS <alias>
WHERE <expression>
ORDER BY <column_1>, <column_2>

