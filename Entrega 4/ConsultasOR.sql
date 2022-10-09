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

-- PRODUTOS 

SELECT * FROM tb_produto P WHERE P.estoque > 50 ORDER BY valor_revenda ASC;

SELECT * FROM tb_produto P WHERE  P.estoque < 50  ORDER BY valor_revenda DESC;


SELECT SUM(P.estoque) AS ESTOQUE_CREATINA FROM tb_produto P WHERE P.valor_revenda > 100 and P.nome_p = 'CREATINA';

SELECT SUM(P.estoque) AS ESTOQUE_WHEY FROM tb_produto P WHERE P.valor_revenda <= 100 and P.nome_p = 'WHEY';

SELECT P.nome_p, COUNT(P.codigo_prod) AS QTD_MARCAS FROM tb_produto P  GROUP BY P.nome_p HAVING COUNT(P.codigo_prod) = 4;


-- COMPRA 

SELECT DEREF(C.vendedor_compra).nome  AS NOME, COUNT(C.vendedor_compra) AS QTD_VENDAS FROM tb_compra C GROUP BY DEREF(C.vendedor_compra).nome ORDER BY DEREF(C.vendedor_compra).nome DESC;


SELECT DEREF(C.cliente_compra).nome  AS NOME, COUNT(C.cliente_compra) AS QTD_COMPRA FROM tb_compra C GROUP BY DEREF(C.cliente_compra).nome ORDER BY DEREF(C.cliente_compra).nome DESC; 


SELECT DEREF(C.cliente_compra).nome AS Nome_Cliente, COUNT(*)  AS QTD_Comprada FROM tb_compra C, TABLE(C.prod_comprados) P GROUP BY DEREF(C.cliente_compra).nome;

SELECT DEREF(C.cliente_compra).nome AS Nome_Cliente, P.nome_p FROM tb_compra C, TABLE(C.prod_comprados) P WHERE P.nome_p = 'WHEY';