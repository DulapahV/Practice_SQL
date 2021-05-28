/*

**[key] is considered column 0 which isn't normally used to "set" but rather used to "get" reference

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
>> ORDER BY [column to order] (DESC)
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

*/