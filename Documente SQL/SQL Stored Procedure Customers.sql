/*Creare procedura stocata*/
CREATE PROCEDURE SelectALLCustomers @City nvarchar(30)
AS 
SELECT * FROM Customers WHERE City = @City
