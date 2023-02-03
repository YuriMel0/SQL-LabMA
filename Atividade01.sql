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