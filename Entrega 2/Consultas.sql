--ALTER TABLE

--CREATE INDEX

--INSERT INTO
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('22549', to_date('2022-11-07', 'yyyy-mm-dd'), 'ATEND', 1800.00, '12514');

--UPDATE
UPDATE funcionario SET salario = 2000 WHERE salario < 2000;

--DELETE
DELETE FROM funcionario WHERE cpf_f = 22549;

--SELECT-FROM-WHERE
SELECT nome,cpf_f FROM funcionario WHERE cargo = 'ATEND';

--BETWEEN
SELECT nome_p, estoque FROM produto WHERE estoque BETWEEN 10 AND 50;

--IN
SELECT nome_p, data_vencimento from produto where nome_p in ('WHEY','CREATINA') 

--LIKE
SELECT nome, crn FROM nutricionista WHERE nome LIKE 'Di%';

--IS NULL ou IS NOT NULL
SELECT nome_p, valor_compra FROM produto WHERE estoque IS NOT NULL;

--INNER JOIN
--MAX
SELECT nome, cpf_f  FROM pessoa P, funcionario F  WHERE F.salario = (SELECT MAX(salario) FROM funcionario);

--MIN
SELECT nome_p FROM produto P WHERE p.estoque = (SELECT MIN(estoque) FROM produto);

--AVG
SELECT avg(percentual_gordura) from cliente;

--COUNT
SELECT nome,count(*) from marcar_consulta M where M.crn = (SELECT crn from nutricionista where nome = 'Arthur Pereira')
--LEFT ou RIGHT ou FULL OUTER JOIN
--SUBCONSULTA COM OPERADOR RELACIONAL
--SUBCONSULTA COM IN
--SUBCONSULTA COM ANY
--SUBCONSULTA COM ALL
--ORDER BY
SELECT nome, crn FROM nutricionista WHERE salario < 10000 ORDER BY salario DESC; 
--GROUP BY
SELECT nome_p, valor_compra FROM produto GROUP BY cnpj_f;
--HAVING
SELECT nome, COUNT(*)
--UNION ou INTERSECT ou MINUS
--CREATE VIEW
--GRANT / REVOKE