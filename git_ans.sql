-- 1. Give me all order id,customer name and date when order was placed.
-- USE lco_git_share;

 SELECT  Orders.OrderID,Orders.OrderDate,Customers.CustomerName
FROM Orders
JOIN Customers
ON Orders.CustomerID=Customers.CustomerID LIMIT 10; 


-- TODO :INNER JOIN
-- 2. Get me order id ,customer name and who is the shipper for order.
SELECT Orders.OrderID,Customers.CustomerName,Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID
) LIMIT 5; 


-- TODO :LEFT JOIN
-- Give me all customers name and their order id.
SELECT Customers.CustomerName,Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID; 


-- TODO RIGHT JOIN
SELECT Customers.CustomerName,Orders.OrderID
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID 

-- TODO : FULL OUTER JOIN

SELECT Customers.CustomerName,Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID 

-- TODO :UNION
SELECT City from Customers
UNION ALL
SELECT City from Suppliers
ORDER BY City;

