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

/* 7 - Liste os países e suas quantidades de clientes. Depois de maneira ordenada pela quantidade de cliente do maior
para o menor (isso é um rank de países por quantidade de clientes. Faça por cidade, depois pelas cidades brasileiras) */
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;


SELECT COUNT(CustomerID), City
FROM Customers
GROUP BY City
ORDER BY COUNT(CustomerID) DESC;


SELECT COUNT(CustomerID), City
FROM Customers
WHERE Country = 'Brazil'
GROUP BY City
ORDER BY COUNT(CustomerID) DESC;

/* 8 - Liste a quantidade de clientes por cidade, em ordem alfabética, do Brasil ou da França.
       Depois de maneira ordenada pela quantidade de cliente do maior para o menor.*/

SELECT COUNT(CustomerID), City
FROM Customers
WHERE Country = 'Brazil' or Country = 'France'
GROUP BY City
ORDER BY City;

SELECT COUNT(CustomerID), City
FROM Customers
WHERE Country = 'Brazil' or Country = 'France'
GROUP BY City
ORDER BY COUNT(CustomerID) DESC;

/* 9 - Faça um rank de países, por quantidade de clientes, somente para aqueles com mais de 10 clientes.*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 10
ORDER BY COUNT(CustomerID) DESC;

/* 10 - Faça o rank por cidade, por quantidade de clientes, com mais de 3 clientes. */
SELECT COUNT(CustomerID), City
FROM Customers
GROUP BY City
HAVING COUNT(CustomerID) > 10
ORDER BY COUNT(CustomerID) DESC;