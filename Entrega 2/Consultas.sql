--ALTER TABLE
-- Olhar o fim do script de criação de tabelas (Linha 158) 

--CREATE INDEX
CREATE UNIQUE INDEX indice_sal ON FUNCIONARIO (salario);

--INSERT INTO
--inserir novo funcionário
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('22549', to_date('2022-11-07', 'yyyy-mm-dd'), 'ATEND', 1800.00, '12513');

--UPDATE
--Atualizar funcionários que tem salário menor que 2000 para 2000
UPDATE funcionario SET salario = 2000 WHERE salario < 2000;

--DELETE
-- Remover o funcionário que foi inserido anteriormente.
DELETE FROM funcionario WHERE cpf_f = 22549;

--SELECT-FROM-WHERE
-- Exibir todos os funcionários que tem o cargo atendente.
SELECT P.nome,F.cpf_f FROM funcionario F, pessoa P WHERE cargo = 'ATEND' and P.cpf = F.cpf_f;

--BETWEEN
--Mostrar o nome de fabricante, nome do produto e estoque de produtos que tem estoque entre 10 e 50 unidades
SELECT F.nome_fabri, P.nome_p, estoque FROM produto P, fabricante F WHERE F.cnpj = P.cnpj_f and p.estoque BETWEEN 10 AND 50;

--IN
--mostrar o nome do fabricante,nome do produto e a data de vencimento dos wheys e creatinas
SELECT f.nome_fabri, p.nome_p, p.data_vencimento from produto p, fabricante f where  F.cnpj = P.cnpj_f and nome_p in ('WHEY','CREATINA'); 

--LIKE
-- Exibir todos as pessoas que têm o nome começando com "Di"
SELECT nome FROM pessoa P WHERE P.nome LIKE 'Di%';

--IS NULL ou IS NOT NULL
-- Exibir o nome e o valor de compra dos produtos em estoque.
SELECT nome_p, valor_revenda FROM produto WHERE estoque IS NOT NULL;

--INNER JOIN
--mostrar o nome de todas os clientes com o plano de saúde unimed
SELECT P.nome FROM pessoa P INNER JOIN cliente C ON P.cpf = C.cpf_c WHERE C.plano_saude = 'UNIMED';


--MAX
--mostrar o nome e cpf do funcionário com maior salário
SELECT p.nome, f.cpf_f  FROM pessoa P, funcionario F  WHERE p.cpf=f.cpf_f and F.salario = (SELECT MAX(salario) FROM funcionario);

--MIN
SELECT nome_p,data_vencimento FROM produto P WHERE p.estoque = (SELECT MIN(estoque) FROM produto);

--AVG
SELECT avg(percentual_gordura) from cliente;

--COUNT
--mostrar o total de consultas marcadas com o nutricionista Arthur Pereira
SELECT count(*) from marcar_consulta M where M.crn = (SELECT N.crn from nutricionista N, Pessoa P where P.cpf = N.cpf_n and P.nome = 'Arthur Pereira');

--LEFT ou RIGHT ou FULL OUTER JOIN
-- Exibir o nome e o telefone de cada cliente, tendo o cliente telefone cadastrado ou não.
SELECT P.nome, T.telefone_c FROM telefone T FULL OUTER JOIN pessoa P ON P.cpf = T.cpf_c;

--SUBCONSULTA COM OPERADOR RELACIONAL
SELECT P.nome_p,F.nome_fabri, P.estoque FROM produto P, fabricante F WHERE P.cnpj_f = F.cnpj and P.estoque < 20;

--SUBCONSULTA COM IN
--mostrar data e hora da compra e o nome dos produtos do fabricante growth que foram comprados na loja
SELECT C.data_hora_compra, C.nome_p FROM compra C Where C.cnpj_f = (SELECT cnpj FROM fabricante WHERE nome_fabri IN ('GROWTH') );

--SUBCONSULTA COM ANY
-- Exibir nome e salario dos funcionarios com salários maiores que pelo menos um vendedor.
SELECT P.nome, F.salario FROM pessoa P, Funcionario F WHERE P.cpf = F.cpf_f and F.salario > ANY (SELECT F.salario FROM Funcionario F WHERE F.cargo='VEND');

--SUBCONSULTA COM ALL
-- Exibir nome e Cod_Atendente de todos os atendentes com salários menores que vendedores.
SELECT P.nome, A.Cod_Atendente FROM atendente A, pessoa P, funcionario F WHERE P.CPF = A.cpf_a
and P.cpf = F.cpf_f and F.salario < ALL (SELECT F.salario FROM funcionario F WHERE F.cargo='VEND');

--ORDER BY
-- Exibir uma lista decrescente do salários dos nutricionistas.
SELECT P.nome, F.salario FROM pessoa P, funcionario F WHERE F.cpf_f = P.cpf AND F.salario < 10000 ORDER BY F.salario DESC;

--GROUP BY
-- Agrupar as pessoas por cep.
SELECT COUNT(nome), cep FROM pessoa GROUP BY cep;

--HAVING
-- Exibir quantidade de pessoas por cargo que recebem mais que 2500 e não sejam únicos no seu cargo.
SELECT F.cargo, COUNT(*) as total FROM Funcionario F WHERE F.salario > 2500 GROUP BY F.cargo HAVING COUNT(*) > 1;

--UNION ou INTERSECT ou MINUS
--Mostra o total de funcionários não nutricionistas juntando os códigos dos dois
SELECT cod_vendedor FROM vendedor UNION SELECT cod_atendente FROM atendente;

--CREATE VIEW
CREATE VIEW Clientes_Marcados AS SELECT P.nome, C.data_hora_consulta FROM pessoa P, consulta C WHERE C.cpf_c = P.cpf and P.cpf IN (SELECT cpf_c FROM consulta); 
SELECT * FROM Clientes_Marcados;

--GRANT / REVOKE
GRANT ALL PRIVILEGES ON Cliente TO PUBLIC;
REVOKE DELETE ON Nutricionista FROM PUBLIC;