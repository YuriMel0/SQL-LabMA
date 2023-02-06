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
