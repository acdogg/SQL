CREATE	PROCEDURE SelectAllSuppliers @City nvarchar(30)
AS
SELECT * FROM Suppliers WHERE City =@City
