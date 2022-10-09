/*
SELECT REF 
SELECT DEREF 
CONSULTA À VARRAY 
CONSULTA À NESTED TABLE 
*/

/*TABELAS
 CLIENTE FUNCIONARIO
 NUTRICIONISTA FABRICANTE 
 
 CONSULTA MARCAR CONSULTA LEAL 
 VENDEDOR ATENDENTE  RODRIGO
 COMPRA PRODUTO  WELISSON
*/


-- CONSULTAS CLIENTE

SELECT C.nome, C.calcula_imc() FROM tb_cliente C WHERE C.calcula_imc() > 25 ORDER BY C.calcula_imc();
SELECT C.cpf,  C.nome, C.percentual_gordura FROM tb_cliente C where C.biotipo = 'MESO' and C.sexo = 'M';
SELECT C.cpf, C.nome, C.idade, C.plano_saude FROM tb_cliente C WHERE C.idade < 18;
SELECT C.plano_saude, count(*) AS qtd_clientes FROM tb_cliente C GROUP BY C.plano_saude ORDER BY count(*);
SELECT C.cpf, C.nome, C.endereco.complemento FROM tb_cliente C where C.endereco.cep = (SELECT C2.endereco.cep FROM tb_cliente C2 WHERE C2.nome = 'João Pedro Silveira');
-- VER PARA POVOAR CLIENTE COM MAIS DE UM TELEFONE
SELECT C.cpf, C.nome, T.* FROM tb_cliente C, TABLE(C.telefones) T WHERE C.plano_saude = 'UNIMED';

-- CONSULTAS FUNCIONÁRIO

SELECT F.cpf, F.nome FROM tb_funcionario F WHERE TO_CHAR(F.data_admissao,'yyyy-mm-dd') LIKE '2022%'; 
SELECT F.nome, F.cargo, F.salario FROM tb_funcionario F WHERE F.gerente IS NULL;
SELECT F.nome, DEREF(F.gerente).nome as nome_gerente, F.cargo from tb_funcionario F WHERE F.gerente IS NOT NULL;
SELECT count(*) FROM tb_funcionario F WHERE F.gerente IS NULL;
SELECT F.cargo, count(*) FROM tb_funcionario F GROUP BY F.cargo;

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


--Retorna nome, cpf e salario dos vendedores que recebem mais de 2000
SELECT v.nome, v.cpf, v.salario FROM tb_vendedor v WHERE v.salario > 2000.00 ORDER BY v.salario;
--Retorna nome, cpf e salario dos nutricionistas que recebem mais de 6400
SELECT N.nome, N.cpf, N.salario FROM tb_nutricionista N WHERE N.salario > 6400.00 ORDER BY N.salario;
--Retorna nome e cpf dos vendedores que tem menos de 30 anos 
SELECT v.nome, v.cpf FROM tb_vendedor v WHERE v.idade < 30;
-- Retorna o nome do cliente e o nome do nutricionista em que a consulta foi marcada pelo atendente Pedro Henrique Pires para o mês de agosto
SELECT DEREF(A.cliente_MarcarConsulta).nome AS Cliente, DEREF(A.nutricionista_MarcarConsulta).nome AS Nutricionista FROM tb_MarcarConsulta A WHERE TO_CHAR(A.data_hora_marcada,'YYYY-MM-DD HH24:MI:SS') LIKE '2022-08-__%' AND DEREF(A.atendente_MarcarConsulta).nome = 'Pedro Henrique Pires' ORDER BY DEREF(A.cliente_MarcarConsulta).nome;
--Retorna o nome do cliente e o cpf do mesmo que comprou algum produto com o vendedor Nathan Peixoto 
SELECT DEREF(A.cliente_compra).nome AS Cliente, DEREF(A.cliente_compra).cpf AS CPF FROM tb_compra A WHERE DEREF(A.vendedor_compra).nome = 'Nathan Peixoto' ORDER BY DEREF(A.cliente_compra).nome;
--Retorna o nome do cliente o sexo e a idade do mesmo para aqueles que se consultaram com Leonardo Moraes para o mês de setembro
SELECT DEREF(A.cliente_consulta).nome AS Cliente, DEREF(A.cliente_consulta).sexo AS Sexo, DEREF(A.cliente_consulta).idade AS Idade FROM tb_consulta A WHERE TO_CHAR(A.data_hora_consulta,'YYYY-MM-DD HH24:MI:SS') LIKE '2022-09-__%' AND DEREF(A.nutricionista_consulta).nome = 'Leonardo Moraes' ORDER BY DEREF(A.cliente_consulta).nome;
--Retorna o nome do cliente e a hora que foi marcada a sua consulta para o mês de agosto
SELECT DEREF(M.cliente_MarcarConsulta).nome AS Cliente, data_hora_marcada FROM tb_MarcarConsulta M WHERE TO_CHAR(M.data_hora_marcada,'YYYY-MM-DD HH24:MI:SS') LIKE '2022-08-__%' ORDER BY DEREF(M.cliente_MarcarConsulta).nome;

