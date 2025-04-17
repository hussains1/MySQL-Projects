# Write sql query to  find category of each product

SELECT CATEGORIES.CATEGORYNAME, PRODUCTS.PRODUCTNAME
FROM CATEGORIES
JOIN PRODUCTS
ON CATEGORIES.CATEGORYID = PRODUCTS.CATEGORYID

# Retrieve all products belonging to the meat/poultry category

SELECT PRODUCTS.PRODUCTNAME, CATEGORIES.CATEGORYNAME
FROM PRODUCTS
JOIN CATEGORIES
ON PRODUCTS.CATEGORYID = CATEGORIES.CATEGORYID
WHERE CATEGORIES.CATEGORYNAME LIKE '%Meat/Poultry%'

# Retrieve the order ID, order date, customer name, and employee name for all orders.

SELECT ORDERS.ORDERID , ORDERS.ORDERDATE, CUSTOMERS.CUSTOMERNAME, CONCAT(FirstName, " ", LastName) AS EMPLOYEE_NAME 
FROM ORDERS
JOIN CUSTOMERS
ON ORDERS.CUSTOMERID = CUSTOMERS.CUSTOMERID
JOIN EMPLOYEES
ON ORDERS.EMPLOYEEID = EMPLOYEES.EMPLOYEEID

# Retrieve the product name, category name, and supplier name for all products

SELECT PRODUCTS.PRODUCTNAME, CATEGORIES.CATEGORYNAME, SUPPLIERS.SUPPLIERNAME
FROM PRODUCTS
JOIN CATEGORIES ON PRODUCTS.CATEGORYID = CATEGORIES.CATEGORYID
JOIN SUPPLIERS ON PRODUCTS.SUPPLIERID = SUPPLIERS.SUPPLIERID

# Create a report for all the orders of 1996 and their Customers.

SELECT ORDERS.ORDERID, ORDERS.ORDERDATE ORDERDATE, CUSTOMERS.CUSTOMERNAME
FROM ORDERS
JOIN CUSTOMERS ON ORDERS.CUSTOMERID = CUSTOMERS.CUSTOMERID
WHERE ORDERDATE LIKE '1996%'

# Retrieve all categories along with the number of products in each category

select count(productname) as totalproducts, categoryname
from products as p
join categories as c
on p.categoryid = c.categoryid
group by categoryname
order by totalproducts desc;

# Retrieve all products with their prices and the quantity ordered for each product.

select price, sum(quantity) as totalquantity, p.productid
from products as p
join order_details as od 
on p.productid = od.productid
group by productid;

