--USO DE RECORD X
--USO DE ESTRUTURA DE DADOS DO TIPO TABLE
--BLOCO ANONIMO X
--CREATE PROCEDURE 
--CREATE FUNCTION 
--%TYPE 
--%ROWTYPE X
--IF ELSIF 
--CASE WHEN 
--LOOP EXIT WHEN X 
--WHILE LOOP 
--FOR IN LOOP 
--SELECT  INTO 
--CURSOR (OPEN, FETCH e CLOSE) 
--EXCEPTION WHEN 
--USO DE PARAMETROS (IN, OUT ou IN OUT) 
--CREATE OR REPLACE PACKAGE 
--CREATE OR REPLACE PACKAGE BODY 
--CREATE OR REPLACE TRIGGER (COMANDO) 
--CREATE OR REPLACE TRIGGER (LINHA) 


-- CURSOR, %ROWTYPE, LOOP, BLOCO ANONIMO
DECLARE
   CURSOR cliente_cur is 
      SELECT C.cpf_c, P.nome, P.idade
      FROM cliente C, pessoa P
      WHERE C.cpf_c = P.cpf;
   cliente_rec cliente_cur%rowtype;
BEGIN 
   OPEN cliente_cur; 
   LOOP 
      FETCH cliente_cur into cliente_rec; 
      EXIT WHEN cliente_cur%notfound; 
      DBMS_OUTPUT.put_line('CPF:'||cliente_rec.cpf_c || ' Nome:' || cliente_rec.nome || ' Idade:' || cliente_rec.idade);
   END LOOP; 
END;

-- 

CREATE OR REPLACE PROCEDURE detalhes_dos_funcionarios
IS
  CURSOR produto_cur
  IS
    SELECT nome_p, valor_revenda, FROM produto;
  produto_rec produto_cur%rowtype;
BEGIN
  FOR produto_rec IN sales_cur
  LOOP
    dbms_output.put_line('Nome do funcionário: ' || emp_cur.first_name ||
     '. Sobrenome do funcionário: ' ||emp_cur.last_name ||
     '. Salário do funcionário:
     ' ||emp_cur.salary);
  END LOOP;
END;