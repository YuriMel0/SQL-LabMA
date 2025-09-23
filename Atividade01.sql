/* 1 - List the cities (City) of customers who live in "Brazil" (Country). */
SELECT * FROM Customers
WHERE Country = 'Brazil';

/* 2 - List the customers (CustomerName) and their addresses (Address) from the cities of "São Paulo" or "Rio de Janeiro". */
SELECT CustomerName, Address
FROM Customers
WHERE City = 'Rio de Janeiro' or 'São Paulo';

/* 3 - List the contact name (ContactName) starting with the letter 'A' and their countries. */
SELECT ContactName, Country
FROM Customers
WHERE ContactName LIKE 'A%';

/* 4 - How many customers are there in Brazil? */
SELECT COUNT(Country)
FROM Customers
WHERE Country = 'Brazil';

/* 5 - How many customers are there in Brazil or France? */
SELECT COUNT(Country)
FROM Customers
WHERE Country = 'Brazil' or Country = 'France';

/* 6 - List customers in alphabetical order by country */
SELECT CustomerName
FROM Customers
ORDER BY Country;

/* 7 - List countries and their number of customers. Then in order by number of customers from highest to lowest 
   (this is a rank of countries by number of customers). Do it by city, then by Brazilian cities */
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

/* 8 - List the number of customers per city, in alphabetical order, from Brazil or France. 
       Then ordered by number of customers from highest to lowest. */
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

/* 9 - Rank countries by number of customers, only those with more than 10 customers. */
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 10
ORDER BY COUNT(CustomerID) DESC;

/* 10 - Rank cities by number of customers, only those with more than 3 customers. */
SELECT COUNT(CustomerID), City
FROM Customers
GROUP BY City
HAVING COUNT(CustomerID) > 10
ORDER BY COUNT(CustomerID) DESC;
