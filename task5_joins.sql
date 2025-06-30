USE ecommerce_db;
-- 🔗 INNER JOIN: Customers and their Orders
SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate
FROM customers c
INNER JOIN orders o ON c.CustomerID = o.CustomerID;

-- 🔗 LEFT JOIN: All customers and their orders (even if no orders)
SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID;

-- 🔗 RIGHT JOIN: All orders and customers (even if customer record is missing)
-- Not supported in SQLite but works in MySQL
SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate
FROM customers c
RIGHT JOIN orders o ON c.CustomerID = o.CustomerID;

-- 🔗 FULL JOIN (simulated using UNION since MySQL doesn’t support it directly)
SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID

UNION

SELECT c.CustomerID, c.Name, o.OrderID, o.OrderDate
FROM customers c
RIGHT JOIN orders o ON c.CustomerID = o.CustomerID;

-- 🔗 INNER JOIN: Orders and Payments
SELECT o.OrderID, o.TotalAmount, p.PaymentDate, p.PaymentMethod
FROM orders o
INNER JOIN payments p ON o.OrderID = p.OrderID;

-- 🔗 JOIN: OrderItems and Products
SELECT oi.OrderID, oi.Quantity, p.ProductName, p.Price
FROM orderitems oi
INNER JOIN products p ON oi.ProductID = p.ProductID;
