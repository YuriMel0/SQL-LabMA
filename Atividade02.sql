/* 1 - What are the information of active policyholders born in May 2011? */
SELECT * 
FROM at_mor
WHERE DATA_NASC = '201103';

/* 2 - What are the CPF and gender of active policyholders born in June 2010? */
SELECT CPF, SEXO 
FROM at_mor
WHERE DATA_NASC = '201006';

/* 3 - What products were purchased by active policyholders born in 
       June 2010 and May 2011, and by which company? */
SELECT PRODUTO, COD_EMP
FROM at_mor
WHERE DATA_NASC = '201006' AND '201103';

/* 4 - What are the entry dates (different from 999999), CPF, birth dates, 
       and gender of active policyholders born in June 2008, ordered by entry date? */
SELECT DATA_INGR, CPF, DATA_NASC, SEXO
FROM at_mor
WHERE DATA_NASC = '200806' AND DATA_INGR <> '999999'
ORDER BY DATA_INGR;

/* 5 - What are the entry dates (different from 999999), CPF, birth dates, 
       and gender of active policyholders born in June 2008, ordered by entry date and gender? */
SELECT DATA_INGR, CPF, DATA_NASC, SEXO
FROM at_mor
WHERE DATA_NASC = '200806' AND DATA_INGR <> '999999'
ORDER BY DATA_INGR, SEXO;

/* 6 - What are the companies present in the AT_MOR table? */
SELECT EMP
FROM at_mor;

/* 7 - What are the possible company codes in the AT_MOR table? */
SELECT COD_EMP
FROM at_mor;

/* 8 - What are the possible product codes in the AT_MOR table? */
SELECT PRODUTO
FROM at_mor;

/* 9 - What are the possible coverages in the AT_MOR table? */
SELECT COBERTURA
FROM at_mor;

/* 10 - Which companies have VGA products in the AT_MOR table? */
SELECT EMP
FROM at_mor
WHERE PRODUTO = 'VGA';

/* 11 - What are the products of company "CDE" in the AT_MOR table? */
SELECT PRODUTO
FROM at_mor
WHERE EMP = 'CDE';

/* 12 - Who is the oldest policyholder in the AT_MOR table? */
SELECT MIN(DATA_NASC), CPF
FROM at_mor;

/* 13 - Who is the youngest policyholder in the AT_MOR table? */
SELECT MAX(DATA_NASC), CPF
FROM at_mor;

/* 14 - What is the average premium value paid in the AT_MOR table? */
SELECT AVG(VALOR)
FROM at_mor;

/* 15 - What is the ranking of CPF by premium value paid in the reference year 2018? */
SELECT VALOR, CPF
FROM at_mor
ORDER BY VALOR;

/* 16 - How many active policyholder records are there in the AT_MOR table? */
SELECT COUNT(DATA_INGR)
FROM at_mor;

/* 17 - How many active policyholder records from the reference year 2018 entered in 2018? */
SELECT COUNT(DATA_INGR)
FROM at_mor
WHERE REF_INFO = '2018' AND REF_INFO LIKE '%2018';

/* 18 - How many active policyholder records entered before 2018, or 
        how many records were in the initial stock in 2018? */

/* 19 - An individual, or policyholder, is identified by the triad 
       (CPF, birth date, gender). How many active individuals are in the database? */
SELECT COUNT(*)
FROM (  SELECT DISTINCT CPF, DATA_NASC, SEXO FROM at_mor);

/* 20 - How many active individuals do we have, grouped and ordered by reference year of information? */
SELECT COUNT(*)
FROM at_mor
GROUP BY REF_INFO
ORDER BY REF_INFO;

/* 21 - How many active individuals do we have, grouped by reference year of information and company, 
        ordered by reference year of information? */
SELECT COUNT(EMP)
FROM at_mor
GROUP BY REF_INFO, EMP
ORDER BY REF_INFO;   

/* 22 - How many active individuals do we have, grouped by reference year of information, company, and product, 
       separated by gender and ordered by reference year of information? */
SELECT REF_INFO, EMP, PRODUTO, SEXO, COUNT(*)
FROM at_mor
GROUP BY REF_INFO, EMP, PRODUTO, SEXO
ORDER BY REF_INFO;
