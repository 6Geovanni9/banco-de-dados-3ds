SELECT *
FROM Suppliers
WHERE country = 'Germany';

SELECT    
o.OrderID,    
o.OrderDate,    
od.ProductID,    
od.Quantity 
FROM Orders AS o 
JOIN OrderDetails AS od 
ON o.OrderID = od.OrderID;

SELECT

p.ProductID,

p.ProductName,

s.SupplierName

FROM Products AS p

JOIN Suppliers AS s

ON p.SupplierID = s.SupplierID;


SELECT p.ProductName, p.Price, od.Quantity 
FROM OrderDetails AS od
INNER JOIN Products AS p
ON p.ProductID = od.ProductID;  


SELECT c.CustomerID, c.ContactName, o.OrderID
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.OrderID;

SELECT * FROM OrderDetails;

UPDATE OrderDetails
SET Quantity = 24 -- A nova quantidade
WHERE orderid = 10248 AND ProductID = 11;

SELECT * FROM OrderDetails;
