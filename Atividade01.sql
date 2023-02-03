/* 1 - Liste as cidades (City) dos clientes que moram no “Brazil” (Country). */
SELECT * FROM Customers
WHERE Country = 'Brazil';

/* 2 - Liste os clientes (CustomerName), e seus endereços (Address), das cidades de “São Paulo” ou do “Rio de Janeiro”.*/
SELECT CustomerName, Address
FROM Customers
WHERE City = 'Rio de Janeiro' or 'São Paulo';


/* 3 - Liste o nome do contato (ContactName) iniciado pela letra ‘A’ e seu países. */
SELECT ContactName, Country
FROM Customers
WHERE ContactName LIKE 'A%';

/* 4 - Quantos clientes há no Brasil? */
SELECT COUNT(Country)
FROM Customers
WHERE Country = 'Brazil';

/* 5 - Quantos clientes há no Brasil ou na França? */
SELECT COUNT(Country)
FROM Customers
WHERE Country = 'Brazil' or Country = 'France';

/* 6 - Liste o cliente por ordem alfabética de países */
SELECT CustomerName
FROM Customers
ORDER BY Country;
