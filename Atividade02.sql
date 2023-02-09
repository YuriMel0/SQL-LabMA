/* 1 - Quais são as informações dos segurados ativos nascidos em maio de 2011? */
SELECT * 
FROM at_mor
WHERE DATA_NASC = '201103';

/* 2 - Quais são os CPF e Sexo dos segurados ativos nascidos em junho de 2010? */
SELECT CPF, SEXO 
FROM at_mor
WHERE DATA_NASC = '201006';

/* 3 - Quais são os Produto comprados por segurados ativos nascidos em
       junho de 2010 e maio de 2011 e em que empresa? */
SELECT PRODUTO, COD_EMP
FROM at_mor
WHERE DATA_NASC = '201006' AND '201103';

/* 4 - Quais são as Datas de Ingresso (diferentes de 999999), CPF, datas de nascimento
       e Sexo dos segurados ativos nascidos em junho de 2008, ordenados por datas de ingresso? */
SELECT DATA_INGR, CPF, DATA_NASC, SEXO
FROM at_mor
WHERE DATA_NASC = '200806' AND DATA_INGR <> '999999'
ORDER BY DATA_INGR;

/* 5 - Quais são as Datas de Ingresso (diferentes de 999999), CPF, datas de nascimento e Sexo dos
       segurados ativos nascidos em junho de 2008, ordenados por datas de ingresso e sexo? */
SELECT DATA_INGR, CPF, DATA_NASC, SEXO
FROM at_mor
WHERE DATA_NASC = '200806' AND DATA_INGR <> '999999'
ORDER BY DATA_INGR, SEXO;

/* 6 - Quais são as empresas presentes na tabela AT_MOR? */
SELECT EMP
FROM at_mor;

/* 7 - Quais são os possíveis códigos de empresas na tabela AT_MOR? */
SELECT COD_EMP
FROM at_mor;

/* 8 - Quais são os possíveis códigos de produto na tabela AT_MOR? */
SELECT PRODUTO
FROM at_mor;

/* 9 - Quais são as possíveis coberturas na tabela AT_MOR? */
SELECT COBERTURA
FROM at_mor;

/* 10 - Quais são as empresas que possuem produtos VGA na tabela AT_MOR? */
SELECT EMP
FROM at_mor
WHERE PRODUTO = 'VGA';

/* 11 - Quais são os produtos da empresa “CDE” na tabela AT_MOR? */
SELECT PRODUTO
FROM at_mor
WHERE EMP = 'CDE';

/* 12 - Qual o segurado mais velho na tabela AT_MOR? */
SELECT MIN(DATA_NASC), CPF
FROM at_mor;

/* 13 - Qual o segurado mais novo na tabela AT_MOR? */
SELECT MAX(DATA_NASC), CPF
FROM at_mor;

/* 14 - Qual a média de Valor de prêmio pago na tabela AT_MOR? */
SELECT AVG(VALOR)
FROM at_mor;

/* 15 - Qual o rank de CPF por valor de prêmio pago no ano de referência 2018? */
SELECT VALOR, CPF
FROM at_mor
ORDER BY VALOR;

/* 16 - Quantos registros de segurado ativo há na tabela AT_MOR? */
SELECT COUNT(DATA_INGR)
FROM at_mor;

/* 17 - Quantos registros de segurado ativo, do ano de referência 2018, ingressaram no ano de 2018? */
SELECT COUNT(DATA_INGR)
FROM at_mor
WHERE REF_INFO = '2018' AND REF_INFO LIKE '%2018';

/* 18 - Quantos registros de segurado ativo ingressaram antes do ano de 2018, ou,
        quantos registros em estoque inicial em 2018? */



/* 19 - Um indivíduo, ou segurado, seria identificado pela tríade
       (CPF, Data de nascimento, sexo). Quantos indivíduos ativos temos na base? */
SELECT COUNT(*)
FROM (  SELECT DISTINCT CPF, DATA_NASC, SEXO FROM at_mor);

/* 20 - Quantos indivíduos ativos temos, agrupados e ordenados por ano de referência da informação? */
SELECT COUNT(*)
FROM at_mor
GROUP BY REF_INFO
ORDER BY REF_INFO;

/* 21 - Quantos indivíduos ativos temos, agrupados por ano de referência da informação e empresa,
        ordenado por ano de referência da informação?? */
SELECT COUNT(EMP)
FROM at_mor
GROUP BY REF_INFO, EMP
ORDER BY REF_INFO;   

/* 22- Quantos indivíduos ativos temos, agrupados por ano de referência da informação e empresa e
       produto, separados por sexo e ordenado por ano de referência da informação?? */
SELECT REF_INFO, EMP, PRODUTO, SEXO, COUNT(*)
FROM at_mor
GROUP BY REF_INFO, EMP, PRODUTO, SEXO
ORDER BY REF_INFO;

