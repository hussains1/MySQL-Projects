#Write a query to list the employees who handled each order, along with the order date.

SELECT employees.EmployeeID, orders.OrderID, orders.OrderDate
FROM employees
JOIN orders
ON employees.EmployeeID = orders.EMPLOYEEID;

# Write a query to find all orders shipped by a specific shipper (e.g., ShipperName = 'Speedy Express').

SELECT SHIPPERS.SHIPPERNAME, ORDERS.SHIPPERID
FROM ORDERS
JOIN SHIPPERS
ON ORDERS.SHIPPERID = SHIPPERS.SHIPPERID;

# Write a query to display all products along with their category names.

SELECT products.ProductName, categories.CategoryName
FROM products
JOIN categories
ON categories.CategoryID = products.CategoryID;

# Write a query to list all products and their quantities for each order.

SELECT PRODUCTS.PRODUCTNAME, order_details.Quantity
FROM products
JOIN order_details
ON order_details.ProductID = products.ProductID;

