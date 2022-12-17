/*SQL Query 1
Returnati numele produsului, cantitatea si pretul unitar pentru toate produsele
comandate dupa numele produsului ordonate descrescator*/
SELECT ProductName, QuantityPerUnit, UnitPrice
FROM Products
ORDER BY ProductName DESC;

/*SQL Query 2
Returnati numele produsului, cantitatea si pretul unitar pentru produsele care au
cel putin 10 unitati in stoc si pretul unitar este mai mic de 30 de dolari comandati,
ordonati dupa numele produsului si pretul unitar*/
SELECT ProductName, QuantityPerUnit, UnitPrice
FROM dbo.Products
WHERE UnitsInStock >= 10 AND UnitPrice < 30
ORDER BY ProductName, UnitPrice;

/*SQL Query 3
Returnati numele celui mai tanar angajat*/
SELECT FirstName, LastName
FROM Employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees);

/*SQL Query 4
Returnati numele si prenumele angajatilor cu titlul de Sales Reprezentative si 
Sales Managers*/
SELECT FirstName, LastName, Title
FROM Employees
WHERE Title = 'Sales Representative' OR Title = 'Sales Manager';

/*SQL Query 5
Returnati toti angajatii care nu sunt din Londra, ordonati dupa titlu crescator
si prenume descrescator*/
SELECT *
FROM Employees
WHERE City != 'London'
ORDER BY Title ASC, FirstName DESC;

/*SQL Query 6
Returnati numele celui mai invarsta angajat*/
SELECT FirstName, LastName
FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees);

/*SQL Query 6
Returnati orasul, numele companiei si numele de contact ale tuturor clientilor care se afla in orase
care incep cu litera "A" sau litera "B", sortati dupa numele de contact descendent*/
SELECT City, CompanyName, ContactName
FROM Customers
WHERE City LIKE 'A%' OR City LIKE 'B%'
ORDER BY ContactName DESC;

/*SQL Query 7
Returnati numele si prenumele tuturor angajatilor ale caror nume incep cu o litera
intre "I" si "M"*/
SELECT FirstName, LastName
FROM Employees
WHERE LastName LIKE '[j-m]%';

/*SQL Query 8
Sa se afiseze primii 5 clienti distincti intr-o coloana denumita 'Customers'*/
SELECT DISTINCT TOP 5 ContactName AS 'Customers'
FROM Customers

/*SQL Query 9
Afiseaza produsele cu pret cuprins intre 10 $ si 20 $*/
SELECT ProductName, UnitPrice AS 'Price'
FROM Products
WHERE UnitPrice BETWEEN 10 AND 20;