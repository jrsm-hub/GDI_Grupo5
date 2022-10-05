--TESTE exibir_detalhes COM CLIENTE
declare 
cliente tp_cliente;

begin
select value(p) into cliente from tb_cliente p where p.cpf = '39511';

cliente.exibe_detalhes();

end;

--TESTE exibir_detalhes COM NUTRICIONISTA
declare 
nutricionista tp_nutricionista;

begin
select value(p) into nutricionista from tb_nutricionista p where p.crn = '087';

nutricionista.exibe_detalhes();

end;


--TESTE exibir_detalhes COM FUNCIONÁRIO
declare 
funcionario tp_funcionario;

begin
select value(p) into funcionario from tb_funcionario p where p.cpf = '13331';

funcionario.exibe_detalhes();

end;

-- TESTE CALCULA_IMC COM CLIENTE

SELECT G.CALCULA_IMC() FROM TB_CLIENTE G;

-- TESTE comparaEstoque COM PRODUTO

DECLARE
produto tp_produto;
i number;

BEGIN

SELECT VALUE(p) INTO produto FROM tb_produto p
WHERE p.codigo_prod = '343';

SELECT P.comparaEstoque(produto) into i FROM tb_produto p WHERE p.codigo_prod = '344';

IF i > 0 THEN DBMS_OUTPUT.PUT_LINE('PRODUTO DE ID '  ||
'344' || ' TEM ESTOQUE MAIOR QUE O DO PRODUTO DE ID '||
TO_CHAR(produto.codigo_prod) ); END IF;
IF i = 0 THEN DBMS_OUTPUT.PUT_LINE('PRODUTO DE ID ' ||
'344' || ' TEM ESTOQUE IGUAL AO DO PRODUTO DE ID '  ||
TO_CHAR(produto.codigo_prod) ); END IF;
IF i < 0 THEN DBMS_OUTPUT.PUT_LINE('PRODUTO DE ID '  ||
'344' || ' TEM ESTOQUE MENOR QUE O DO PRODUTO DE ID '||
TO_CHAR(produto.codigo_prod) );END IF;

END;

-- TESTE fabricanteToStr COM FABRICANTE

declare
fab tp_fabricante;
str varchar2(1000);
begin 
select value(p) into fab from tb_fabricante p where p.cnpj = '34346'; 
str := fab.fabricanteToStr;
DBMS_OUTPUT.PUT_LINE(str);

end;