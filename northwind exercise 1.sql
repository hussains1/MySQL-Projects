#Count the number of customers who have placed orders

SELECT COUNT(CUSTOMERNAME) AS CUSTOMERS FROM CUSTOMERS

#Retrieve all orders where the order date is in July 1996.

SELECT * FROM ORDERS
WHERE ORDERDATE BETWEEN '1996-07-01' AND '1996-07-31';


#Retrieve products with unit prices between 100 and 200.

SELECT PRICE, UNIT FROM PRODUCTS
WHERE PRICE BETWEEN 100 AND 200

#Retrieve all columns from the Orders table for orders made by customers whose name starts with "A".

SELECT * FROM ORDERS
WHERE CUSTOMERID IN (
    SELECT  customerid
    FROM CUSTOMERS
    WHERE CUSTOMERNAME LIKE 'a&'
);

SELECT * FROM ORDERS, CUSTOMERS
WHERE CUSTOMERNAME LIKE 'a%'

#Calculate the average unit price of products

SELECT AVG(UNIT) AS UNIT, AVG(PRICE) AS PRICE FROM PRODUCTS

#Retrieve customers whose company names contain 'Food' anywhere in the name.

SELECT * FROM CUSTOMERS 
WHERE CUSTOMERNAME LIKE '%FOOD%'

# Get all employees whose last name starts with "S" and first name ends with "L".

SELECT * FROM EMPLOYEES 
WHERE LASTNAME LIKE '%S' AND FIRSTNAME LIKE '%L'


#Find all orders made by customers with IDs 1, 3, and 5.

SELECT * FROM ORDERS WHERE CUSTOMERID IN (1,3,5)

#Find all products whose name contains "chocolate"

SELECT PRODUCTNAME FROM PRODUCTS
WHERE PRODUCTNAME LIKE '%chocolate%'

#Find the maximum unit price of products.

SELECT MAX(UNIT) AS UNIT, MAX(PRICE) AS PRICE FROM PRODUCTS

#Retrieve the top 5 most expensive products from the Products table.

SELECT PRODUCTNAME, MAX(PRICE) AS PRICE FROM PRODUCTS
GROUP BY PRODUCTNAME
ORDER BY PRICE DESC
LIMIT 5 

#Find all products whose names start with 'Ch'

SELECT PRODUCTNAME FROM PRODUCTS 
WHERE PRODUCTNAME LIKE 'CH%'