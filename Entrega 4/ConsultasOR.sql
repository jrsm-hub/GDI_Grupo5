/*
SELECT REF 
SELECT DEREF 
CONSULTA À VARRAY 
CONSULTA À NESTED TABLE 
*/

/*TABELAS
 CLIENTE FUNCIONARIO FABRICANTE LACET ♥
 CONSULTA MARCAR CONSULTA NUTRICIONISTA  LEAL ♥
 VENDEDOR ATENDENTE  RODRIGO ♥
 COMPRA PRODUTO  WELISSON ♥
*/
-- CONSULTAS CLIENTE
SELECT C.nome, C.calcula_imc() FROM tb_cliente C WHERE C.calcula_imc() > 25 ORDER BY C.calcula_imc();
SELECT C.cpf,  C.nome, C.percentual_gordura FROM tb_cliente C where C.biotipo = 'MESO' and C.sexo = 'M';
SELECT C.cpf, C.nome, C.idade, C.plano_saude FROM tb_cliente C WHERE C.idade < 18;
SELECT C.plano_saude, count(*) AS qtd_clientes FROM tb_cliente C GROUP BY C.plano_saude ORDER BY count(*);
SELECT C.cpf, C.nome, C.endereco.complemento FROM tb_cliente C where C.endereco.cep = (SELECT C2.endereco.cep FROM tb_cliente C2 WHERE C2.nome = 'João Pedro Silveira');
SELECT C.cpf, C.nome, T.* FROM tb_cliente C, TABLE(C.telefones) T WHERE C.plano_saude = 'HAPVIDA';

-- CONSULTAS FUNCIONÁRIO

SELECT F.cpf, F.nome FROM tb_funcionario F WHERE TO_CHAR(F.data_admissao,'yyyy-mm-dd') LIKE '2022%'; 
SELECT F.nome, F.cargo, F.salario FROM tb_funcionario F WHERE F.gerente IS NULL;
SELECT F.nome, DEREF(F.gerente).nome as nome_gerente, F.cargo from tb_funcionario F WHERE F.gerente IS NOT NULL;
SELECT count(*) FROM tb_funcionario F WHERE F.gerente IS NULL;
SELECT F.cargo, count(*) FROM tb_funcionario F GROUP BY F.cargo;


--CONSULTAS NUTRICIONISTA

SELECT N.crn, N.nome, N.salario FROM tb_nutricionista N ORDER BY N.salario DESC;
SELECT N.crn, N.nome, N.data_admissao fROM tb_nutricionista N 
    WHERE TO_CHAR(N.data_admissao, 'yyyy-mm-dd') BETWEEN '2021-04-17' AND '2022-06-21' 
    AND TO_CHAR(N.data_admissao, 'yyyy-mm-dd') NOT IN ('2021-04-17','2022-06-21');
SELECT N.sexo, COUNT(N.sexo) FROM tb_nutricionista N GROUP BY N.sexo;


-- CONSULTAS FABRICANTE

SELECT P.* FROM tb_fabricante F, TABLE(F.prod_fornecido) P WHERE F.nome_fabri = 'MAX';
SELECT F.nome_fabri, Count(*) FROM tb_fabricante F, TABLE(F.prod_fornecido) P GROUP BY F.nome_fabri;

DECLARE
valor_lucro number;
BEGIN
    FOR prod in (SELECT P.* FROM tb_fabricante F, TABLE(F.prod_fornecido) P WHERE F.nome_fabri = 'INTEGRAL')
        LOOP
        valor_lucro := prod.valor_revenda - prod.valor_compra;
        DBMS_OUTPUT.PUT_LINE( 'O produto ' || prod.nome_p || ' da empresa INTEGRAL MÉDICA ' || 'tem valor de lucro de R$ ' || valor_lucro);
        END LOOP;
END;

SELECT F.nome_fabri, P.nome_p, P.estoque FROM tb_fabricante F, TABLE(F.prod_fornecido) P WHERE TO_CHAR(P.data_vencimento,'yyyy-mm-dd') LIKE '2022%';
SELECT F.cnpj, F.nome_fabri, P.nome_p, P.estoque FROM tb_fabricante F, TABLE(F.prod_fornecido) P WHERE TO_CHAR(P.data_vencimento,'yyyy') > '2024' ORDER BY P.estoque;
SELECT F.cnpj, F.nome_fabri, P.nome_p, P.estoque FROM tb_fabricante F, TABLE(F.prod_fornecido) P WHERE TO_CHAR(P.data_vencimento,'yyyy') > '2024' ORDER BY F.fabricanteToStr();
SELECT F.nome_fabri, P.nome_p FROM tb_fabricante F, TABLE(F.prod_fornecido) P WHERE P.estoque = 0;

DECLARE
valor_lucro number;
lucro_potencial number;
empresa varchar2(10);
BEGIN
   
    FOR prod in (SELECT P.* FROM tb_fabricante F, TABLE(F.prod_fornecido) P)
        LOOP
        SELECT F.nome_fabri INTO empresa FROM tb_fabricante F, TABLE(F.prod_fornecido) P WHERE P.codigo_prod = prod.codigo_prod;
        valor_lucro := prod.valor_revenda - prod.valor_compra;
        lucro_potencial := valor_lucro * prod.estoque;
        DBMS_OUTPUT.PUT_LINE( '___________________________________________________________________________');
        DBMS_OUTPUT.PUT_LINE( 'O produto ' || prod.nome_p || ' da empresa ' || empresa || ' ainda tem um lucro potencial de R$ ' || lucro_potencial);
        END LOOP;
END;

--CONSULTAS CONSULTA
--retorna consultas em que houve uma prescrição
SELECT DEREF(C.cliente_consulta).cpf AS CPF, DEREF(C.cliente_consulta).nome AS NOME 
       FROM tb_consulta C WHERE C.prod_prescritos IS NOT NULL;
--quantidade de consultas de cada nutricionista
SELECT DEREF(C.nutricionista_consulta).nome AS NOME, COUNT(DEREF(C.nutricionista_consulta).nome) AS N_CONSULTAS
       FROM tb_consulta C GROUP BY DEREF(C.nutricionista_consulta).nome;
--consultas do DR RAUL Nascimento
SELECT C.data_hora_consulta, DEREF(C.cliente_consulta).nome AS Cliente,  
       DEREF(C.cliente_consulta).plano_saude AS Convênio FROM tb_consulta C WHERE 
       DEREF(C.nutricionista_consulta).crn = 087 ORDER BY C.data_hora_consulta ASC;

--CONSULTAS MARCAR CONSULTA

--Mostra todas as consultas do Turno da Manhã
SELECT DEREF(A.cliente_MarcarConsulta).nome AS Cliente,
        DEREF(A.nutricionista_MarcarConsulta).nome AS Nutricionista, A.data_hora_marcada
        FROM tb_MarcarConsulta A WHERE DEREF(A.atendente_MarcarConsulta).Cod_Atendente = '022'; 
--Mostra todas as consultas do Turno da Tarde
SELECT DEREF(A.cliente_MarcarConsulta).nome AS Cliente,
        DEREF(A.nutricionista_MarcarConsulta).nome AS Nutricionista, A.data_hora_marcada
        FROM tb_MarcarConsulta A WHERE DEREF(A.atendente_MarcarConsulta).Cod_Atendente = '012'; 


-- Retorna o nome do cliente e o nome do nutricionista em que a consulta foi marcada pelo atendente Pedro Henrique Pires para o mês de setembro
SELECT DEREF(A.cliente_MarcarConsulta).nome AS Cliente, 
       DEREF(A.nutricionista_MarcarConsulta).nome AS Nutricionista FROM tb_MarcarConsulta A 
       WHERE TO_CHAR(A.data_hora_marcada,'YYYY-MM-DD HH24:MI:SS') LIKE '2022-09-__%' 
       AND DEREF(A.atendente_MarcarConsulta).nome = 'Pedro Henrique Pires' 
       ORDER BY DEREF(A.cliente_MarcarConsulta).nome;

--Retorna o nome do cliente e a hora que foi marcada a sua consulta para o mês de setembro
SELECT DEREF(M.cliente_MarcarConsulta).nome AS Cliente, data_hora_marcada 
       FROM tb_MarcarConsulta M WHERE TO_CHAR(M.data_hora_marcada,'YYYY-MM-DD HH24:MI:SS') 
       LIKE '2022-09-__%' ORDER BY DEREF(M.cliente_MarcarConsulta).nome;

--Retorna o nome do cliente o sexo e a idade do mesmo para aqueles que se consultaram com Leonardo Moraes para o mês de setembro
SELECT DEREF(A.cliente_consulta).nome AS Cliente, DEREF(A.cliente_consulta).sexo AS Sexo,
       DEREF(A.cliente_consulta).idade AS Idade FROM tb_consulta A 
       WHERE TO_CHAR(A.data_hora_consulta,'YYYY-MM-DD HH24:MI:SS') LIKE '2022-09-__%' 
       AND DEREF(A.nutricionista_consulta).nome = 'Leonardo Moraes' 
       ORDER BY DEREF(A.cliente_consulta).nome;

--CONSULTAS VENDEDOR/ATENDENTE

--Retorna nome, cpf e salario dos vendedores que recebem mais de 2000
SELECT v.cpf, v.nome, v.salario FROM tb_vendedor v WHERE v.salario > 2000.00 ORDER BY v.salario;
--Retorna nome e cpf dos vendedores que tem menos de 30 anos 
SELECT v.cpf, v.nome FROM tb_vendedor v WHERE v.idade < 30;
--Mostra todos os Atendentes
SELECT a.cpf, a.nome, a.salario FROM tb_atendente a;
--Mostra os atendentes contratados no ano de 2021
SELECT a.cpf, a.nome FROM tb_atendente a WHERE TO_CHAR(a.data_admissao, 'YYYY-MM-DD') LIKE '2021-__-__%';
--Mostra os vendedores com um salário menor que o salário medio dos funcionários
SELECT V.cpf, V.nome, V.salario FROM tb_vendedor V WHERE V.salario < (SELECT AVG(salario) FROM tb_funcionario);



-- PRODUTO 

SELECT * FROM tb_produto P WHERE P.estoque > 50 ORDER BY valor_revenda ASC;
SELECT * FROM tb_produto P WHERE  P.estoque < 50  ORDER BY valor_revenda DESC;
SELECT SUM(P.estoque) AS ESTOQUE_CREATINA FROM tb_produto P 
       WHERE P.valor_revenda > 100 and P.nome_p = 'CREATINA';
SELECT SUM(P.estoque) AS ESTOQUE_WHEY FROM tb_produto P 
       WHERE P.valor_revenda <= 100 and P.nome_p = 'WHEY';
SELECT P.nome_p, COUNT(P.codigo_prod) AS QTD_MARCAS FROM tb_produto P 
       GROUP BY P.nome_p HAVING COUNT(P.codigo_prod) = 4;


--CONSULTAS COMPRA 

--Retorna o nome do cliente e o cpf do mesmo que comprou algum produto com o vendedor Nathan Peixoto 
SELECT DEREF(A.cliente_compra).nome AS Cliente, 
       DEREF(A.cliente_compra).cpf AS CPF FROM tb_compra A 
       WHERE DEREF(A.vendedor_compra).nome = 'Nathan Peixoto' 
       ORDER BY DEREF(A.cliente_compra).nome;
SELECT DEREF(C.vendedor_compra).nome  AS NOME, COUNT(C.vendedor_compra) AS QTD_VENDAS 
       FROM tb_compra C GROUP BY DEREF(C.vendedor_compra).nome 
       ORDER BY DEREF(C.vendedor_compra).nome DESC;
SELECT DEREF(C.cliente_compra).nome  AS NOME, COUNT(C.cliente_compra) AS QTD_COMPRA 
       FROM tb_compra C GROUP BY DEREF(C.cliente_compra).nome 
       ORDER BY DEREF(C.cliente_compra).nome DESC ;
SELECT DEREF(C.cliente_compra).nome AS Nome_Cliente, COUNT(*)  AS QTD_Comprada 
       FROM tb_compra C, TABLE(C.prod_comprados) P 
       GROUP BY DEREF(C.cliente_compra).nome;
SELECT DEREF(C.cliente_compra).nome AS Nome_Cliente, P.nome_p 
       FROM tb_compra C, TABLE(C.prod_comprados) P WHERE P.nome_p = 'WHEY';
