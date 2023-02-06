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
SELECT PRODUTO
FROM at_mor
WHERE DATA_NASC = '201006' AND '201103';