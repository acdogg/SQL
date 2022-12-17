SELECT COUNT (IDTranzactie) AS 'Tranzactii'
FROM Tranzactii
WHERE IDClient = 2;

SELECT COUNT (IDTranzactie) AS 'Tranzactii'
FROM Tranzactii
WHERE IDClient = 3 AND IDProdus = 2;

SELECT COUNT (IDTranzactie) AS 'Tranzactii' 
FROM Tranzactii
WHERE IDClient = 1 AND IDProdus = 2;

SELECT COUNT (IDTranzactie) AS 'Produse cumparate' 
FROM Tranzactii
WHERE IDProdus = 2;