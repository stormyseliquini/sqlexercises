-- EXERCISE ONE 
SELECT CategoryName, Description FROM Categories
-- EXERCISE TWO
SELECT contactName, customerID, companyName FROM Customers WHERE city = 'london'
-- EXERCISE THREE
SELECT * FROM Suppliers WHERE Fax != 'null' AND (ContactTitle = 'Marketing Manager' OR ContactTitle = 'Sales Representative')
-- EXERCISE FOUR
SELECT CustomerID FROM Orders WHERE RequiredDate BETWEEN '1997-01-01' AND '1997-12-31' AND Freight < 100
-- EXERCISE FIVE
SELECT CompanyName, ContactName FROM Customers WHERE Country = 'Mexico' OR Country = 'Sweden' OR Country = 'Germany'
-- EXERCISE SIX
SELECT COUNT(ProductID) AS NumDiscontinued FROM Products WHERE Discontinued = 1
-- EXERCISE SEVEN
SELECT CategoryName, Description FROM Categories WHERE CategoryName LIKE 'Co%'
-- EXERCISE EIGHT
SELECT CompanyName, City, Country, PostalCode FROM Suppliers WHERE Address LIKE '%rue%' ORDER BY CompanyName
-- EXERCISE NINE
SELECT ProductID, Quantity AS 'Quantity Purchased' FROM [Order Details] ORDER BY Quantity DESC
-- EXERCISE TEN
SELECT Customers.CompanyName, Customers.Address, Customers.City, Customers.PostalCode, Customers.Country, Orders.OrderDate FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID WHERE Orders.ShipVia = 1
-- EXERCISE ELEVEN
SELECT CompanyName, ContactName, ContactTitle, Region AS 'Region Description' FROM Suppliers
-- EXERCISE TWELVE
SELECT Products.ProductName FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID WHERE Products.CategoryID = 2
-- EXERCISE THIRTEEN
SELECT ContactName, CustomerID FROM Customers WHERE Customers.CustomerID NOT IN (SELECT CustomerID FROM Orders)
-- EXERCISE FOURTEEN
INSERT INTO shippers (CompanyName) VALUES ('amazon')
-- EXERCISE FIFTEEN
UPDATE shippers SET CompanyName = 'amazon prime' WHERE CompanyName = 'amazon'
-- EXERCISE SIXTEEN
SELECT Orders.ShipName, CONVERT(int,ROUND(SUM(Orders.Freight),0)) AS 'Freight Total' FROM Shippers LEFT JOIN Orders ON Shippers.ShipperID = Orders.ShipVia  GROUP BY Orders.ShipName;
-- EXERCISE SEVENTEEN
SELECT concat(LastName, ', ',FirstName) AS DisplayName FROM Employees INSERT INTO Customers(CustomerID, CompanyName, ContactName) VALUES('STORM','nothingElliott','stormy seliquini')
INSERT INTO Orders(CustomerID, OrderDate) VALUES('STORM','1-2-17') INSERT INTO [Order Details](OrderID, ProductID) VALUES(@@IDENTITY,(SELECT ProductID FROM Products WHERE ProductName = 'Grandma''s Boysenberry Spread'))
--EXERCISE NINETEEN.
SELECT od.OrderID FROM ORders o Join [Order Details] od ON o.OrderID = od.OrderID  WHERE CustomerID= 'STORM' SELECT * FROM [Order Details]
DELETE FROM [Order Details] WHERE OrderID=(SELECT OrderID FROM ORders WHERE CustomerID='STORM') DELETE FROM Orders 
WHERE CustomerID='STORM' DELETE FROM Customers WHERE CustomerID = 'STORM'
SELECT * FROM Customers WHERE CustomerID = 'STORM'
--EXERCISE TWENTY
SELECT ProductName, UnitsInStock FROM Products WHERE UnitsInStock > 100;
