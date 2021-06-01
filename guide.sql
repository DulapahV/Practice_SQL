/*
Order by
1. SELECT - column_name(s)
2. FROM - table_name
3. WHERE - condition(s)
4. GROUP BY - column_name(s)
5. HAVING - condition(s)
6. ORDER BY - column_name(s)
7. LIMIT - number of rows;


**[key] is considered column 0 which isn't normally used to "set" but rather used to "get" reference
**WHERE can't be used with aggregate function

=====
SELECT [column] FROM [table];

[column] is used to select column to get data (use , to seperate in case you want more than 1 column)
* in [column] to select all column in the table
[table] used to specify what table to get

for exmaple, 
SELECT * FROM artists;
SELECT name FROM artists;
SELECT 
    FirstName, 
    LastName 
FROM customers;

=====
>> AS [new name]
SELECT
    [old name] AS [new name],
    [other...]
From customers;

Change name of the column only on the time you run the code (doesn't change database)

=====
>> WHERE [key] = [value]
SELECT [column] FROM [table] WHERE [key] = [value];

Get data of [column] from where the [key] = [value] in the [table]
Note that [key] must be unique

for example,
SELECT * FROM customers WHERE CustomerID = 1;
SELECT FirstName FROM customers WHERE CustomerID < 5;
SELECT * FROM customers WHERE Country = 'Canada' AND State = 'ON'; 
SELECT LastName FROM customers WHERE Country = 'Canada' or Country = 'USA'; 


=====
>> ORDER BY [column to order] (DESC/ASC)
SELECT [column] FROM [table] WHERE [key] = [value] ORDER BY [column to order] (DESC);

[column to order] will be arranged in ascending order
(DESC) will arrange in descending order

for example,
SELECT * FROM customers WHERE Country = 'Canada' or Country = 'USA' ORDER BY FirstName;
SELECT * FROM customers WHERE Country = 'Canada' or Country = 'USA' ORDER BY FirstName DESC;
SELECT LastName FROM customers WHERE Country = 'Canada' or Country = 'USA' ORDER BY FirstName;

=====
>> LIMIT [int]
SELECT [column] FROM [table] WHERE [key] = [value] ORDER BY [column to order] (DESC) LIMIT [int];

LIMIT [int] will limit the amount of output

for example,
SELECT LastName FROM customers WHERE Country = 'Canada' or Country = 'USA' ORDER BY FirstName LIMIT 1;

=====
INSERT INTO [table] VALUES ([values in column1] [values in column2], ...);

You must type all column in the [table]
use NULL to specify no data to insert

for example,
INSERT INTO customers VALUES (60, 'Sitthapong', 'Jitsuparp, NULL, 'Thailand');

=====
INSERT INTO [table] ([column 1], [column2], ...) VALUES ([values in column1], [values in column2], ...);

for example,
INSERT INTO customers (Age, FirstName) VALUES (60, 'Sitthapong');

=====
UPDATE [table] SET [column1] = [values in column1], [column2] = [values in column2], ... WHERE [key] = [value];

Not specifying WHERE could lead to destructive outcome (all values in column changed)

for example,
UPDATE customers SET Company = "BornToDev CO., Ltd." WHERE CustomerID = 61;

=====
DELETE FROM [table] WHERE [KEY] = [VALUE];

Not specifying WHERE could lead to destructive outcome (all values in column deleted)

for example,
DELETE FROM customers WHERE customerID = 61;

=====
SELECT COUNT ([column n]) FROM CustomerID WHERE [key] = [Value]

for exmaple,
SELECT COUNT (FirstName) FROM customers WHERE City = 'Paris';

=====
>> AVG (Average)
SELECT AVG [(column)] FROM [table];

for example, 
SELECT AVG (total) FROM invoices;

=====
>> SUM
SELECT SUM ([column]) FROM [table];

for example,
SELECT SUM (total) FROM invoices;

=====
>> min/max
SELECT min/max ([column]) FROM [table];

for example,
SELECT min (total) FROM invoices;

=====
SELECT COUNT ([key]), [colummn1] FROM [table] GROUP BY [Column1]

Show number of key are in column1 from table and group by column1


for example,
SELECT COUNT (CustomerID), city FROM customers GROUP BY City
SELECT COUNT (CustomerID) AS Qrt, Country FROM customers GROUP BY Country ORDER BY Qrt DESC;

=====
>> NOT
SELECT [column] FROM [table] WHERE NOT [column] = "[data in column]";

for example,
SELECT * FROM employees WHERE NOT Title = "IT Staff";

=====
>> IN
SELECT [column] FROM [table] WHERE [column] IN ("[data in column]", "[data in column]", ...)

for example,
SELECT * FROM employees WHERE Title IN ("Sales Support Agent", "Sales Manager", "General Manager")

=====
>> LIKE
SELECT [column] FROM [table] WHERE [column] LIKE "[requirement to be same]%"

for example,
SELECT * FROM customers WHERE FirstName LIKE "A%" select all people whose firstname starts with "A" but can be followed by anything
SELECT * FROM customers WHERE FirstName LIKE "%a" select all people whose firstname ends with "A" but can be perceded by anything
SELECT * FROM customers WHERE FirstName LIKE "%a%" select all people whose firstname contains "a" character
SELECT * FROM customers WHERE FirstName LIKE "%a%t" select all people whose firstname starts with "a" and ends with "t"

=====
>> BETWEEN
SELECT [column] FROM [table] WHERE [column] BETWEEN [value1] AND [value2]

for example,
SELECT * FROM customers WHERE NOT CustomerID BETWEEN 10 AND 35
SELECT * FROM customers WHERE NOT CustomerID BETWEEN 10 AND 35 AND Country IN ("Brazil", "Czech Republic")

=====
SELECT [column] FROM [table] WHERE [column] IS NULL;

See what information is blank

for example,
SELECT * FROM customers WHERE Phone IS NULL;
SELECT * FROM customers WHERE Phone IS NOT NULL;

=====
AND / OR
SELECT [column] FROM [table] WHERE [column1] = "[data in column1]" OR/AND [column2] = "[data in column2]"

for example,
SELECT * FROM customers WHERE Country = "Brazil" OR State = "SP";

=====
>> INNER JOIN
SELECT [table1].[column in table1], [table2].[column in table2] FROM [table1] INNER JOIN [table2] ON [table1].[column in table1] = [column in table2]

for example,
SELECT * FROM invoices INNER JOIN customers ON invoices.CustomerID = customers.CustomerID ORDER BY InvoiceID ASC;
SELECT Orders.OrderID, Cutsomers.CustomerName FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
SELECT invoices.InvoiceID, customers FirstName, customers,LastName, invoices.Total FROM invoices INNER JOIN customers ON invoices.CustomerID = customers.CustomerID ORDER BY InvoiceID ASC;

=====
>> LEFT JOIN

=====
>>
*/