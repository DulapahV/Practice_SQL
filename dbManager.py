import sqlite3

connection = sqlite3.connect('chinook.db')
print("Connected to DB!")
cursor = connection.execute("SELECT * FROM Customers;") # Put SQL command here
for row in cursor:
    print("Customer ID:", row[0], row[1], row[2])

print("============")

cursor = connection.execute("SELECT FirstName, LastName, Email FROM Customers;") # Put SQL command here
for row in cursor:
    print("Customer ID:", row[0], row[1], row[2])
connection.close()
