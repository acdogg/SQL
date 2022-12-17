/*SQL - Query1 INNER JOIN*/
/*Sa se afiseze toti clientii care au plasat comenzi*/
SELECT Customers.ContactName
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.ContactName

/*SQL - Query2 INNER JOIN*/
/*Sa se afiseze ID-ul clientului si numarul produselor comandate intre 1998.03.01 si
	1998.03.31 pe coloana denumita OrdersNumber. Ordonati datele dupa Customer ID.*/
SELECT Orders.CustomerID, COUNT(*) AS OrderNumber 
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
WHERE Orders.OrderDate >= '1995-03-01' AND Orders.OrderDate <= '1995-03-31'
GROUP BY Orders.CustomerID

/*SQL - Query3 INNER JOIN*/
/* Afiseaza numele produsului si pretul, pentru produsul cu cel mai mare pret de lista 
	vandut dupa 1995-04-01 (inclusiv această dată).*/
SELECT TOP 1 Products.ProductName, Products.UnitPrice AS 'BiggestPrice'
FROM Orders
INNER JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
INNER JOIN	Products ON Products.ProductID = [Order Details].ProductID
WHERE OrderDate >= '1995-04-01'
ORDER BY Products.UnitPrice DESC

/*SSQL Query4 INNER JOIN*/
/*Afiseaza pentru fiecare client, numărul de comenzi plasate în martie 1995.
	Ordoneaza dupa CustomerID. */
SELECT Orders.CustomerID, COUNT(*) AS OrderNumber
FROM Orders
INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
INNER JOIN	[Order Details] ON [Order Details].OrderID = Orders.OrderID
WHERE Orders.OrderDate >= '1995-03.01' AND Orders.OrderDate <= '1995.03.31'
GROUP BY Orders.CustomerID

/*SSQL Query5 INNER JOIN*/
/*Afiseaza produsele care nu au fost comandate.*/
SELECT ProductName
FROM Products
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
WHERE [Order Details].OrderID IS NULL