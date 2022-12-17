/* SQL Query 1
Returnati toate numele companiilor si numele de contact pentru care clientii se afla in Buenos Aires*/
SELECT CompanyName, ContactName
FROM Customers
WHERE City = 'Buenos Aires';

/*SQL Query 2
Returnati data comenzii, data expedierii, ID-ul clientului si Shipped Date, plasate pe 19 mai 1997*/
SELECT OrderDate, ShippedDate, CustomerID, Freight
FROM Orders
WHERE OrderDate = '1997-05-19';

/*SQL Quary 3
Returnați numele, prenumele și țara tuturor angajaților care nu se află în Statele Unite.*/
SELECT FirstName, LastName, Country
FROM Employees
WHERE Country != 'USA';

/*SQL Quary 4
Returnați ID-ul angajatului, ID-ul comenzii, ID-ul clientului, Required Date si Shipped Date, 
a tuturor comenzilor care au fost expediate mai târziu decât au fost solicitate (Shipped Date > Required Date).*/
SELECT EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
FROM Orders
WHERE ShippedDate > RequiredDate;

/*SQL Quary 5
Returnați orașul, numele companiei și numele de contact al tuturor clienților care se află în orașe care încep cu „A” sau „B“.*/
SELECT City, CompanyName, ContactName
FROM Customers
WHERE City LIKE 'A%' OR City LIKE 'B%';

/*SQL Quary 6
Returnați toate comenzile care au un cost de transport mai mare de 500 USD.*/
SELECT *
FROM Orders
WHERE Freight > 500.00;

/*SQL Quary 7
Returnați numele produsului, unitățile în stoc (UnitsInStock), 
unitățile pe comandă (UnitsOnOrder) și ReorderLevel a tuturor produselor care sunt disponibile pentru recomandă.*/
SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM Products
WHERE UnitsInStock > 0;

/*SQL Quary 8
Returnați numele companiei, numele de contact și numărul de fax al tuturor clienților care au un număr de fax.*/
SELECT CompanyName, ContactName, Fax
FROM Customers
WHERE Fax != 'NULL';

/*SQL Quary 9
Returnați numele și prenumele tuturor angajaților care nu raportează nimănui (ReportsTo).*/
SELECT FirstName, LastName, ReportsTo
FROM Employees
WHERE ReportsTo IS NULL;

/*SQL Quary 10
Returnați numele companiei, numele contactului și numărul de fax al tuturor clienților care au un număr de fax;  sortați după numele companiei.*/
SELECT CompanyName, ContactName, Fax
FROM Customers
WHERE Fax != 'NULL'
ORDER BY CompanyName ASC;

/*SQL Quary 11
Returnați orașul, numele companiei și numele de contact ale tuturor clienților care se află în orașe care încep cu „A” sau „B”; 
sortați după numele contactului descendent.*/
SELECT City, CompanyName, ContactName
FROM Customers
WHERE City LIKE 'A%' OR City LIKE 'B%'
ORDER BY ContactName DESC;

/*SQL Quary 12
Returnați numele și prenumele tuturor angajaților ale căror nume încep cu o literă între „J” și „M”.*/
SELECT FirstName, LastName
FROM Employees
WHERE LastName LIKE '[j-m]%';

