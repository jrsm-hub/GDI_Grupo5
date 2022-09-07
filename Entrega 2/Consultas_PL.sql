--USO DE RECORD X -- usar em alguma coisa
CREATE TYPE funcionario_importante IS RECORD (
   cpf funcionario.cpf_f%TYPE,
   carg funcionario.cargo%TYPE,
   sal funcionario.salario%TYPE
);
--USO DE ESTRUTURA DE DADOS DO TIPO TABLE X -- usar em alguma coisa
TYPE Tabela IS TABLE OF funcionario_importante INDEX BY BINARY_INTEGER; 
--BLOCO ANONIMO X
--CREATE PROCEDURE X -- testar
CREATE OR REPLACE PROCEDURE InformaGerente(cpf_f_v funcionario.cpf_f%TYPE, cpf_ger_v OUT funcionario.cpf_ger%TYPE) IS
--cpf_ger_v funcionario.cpf_ger%TYPE;
BEGIN
   SELECT cpf_ger INTO cpf_ger_v FROM FUNCIONARIO WHERE cpf_f = cpf_f_v;
END;
--CREATE FUNCTION x 
CREATE OR REPLACE FUNCTION situacao_estoque (nome_p_v produto.nome_p%TYPE) RETURN varchar2 IS
em_falta_v varchar2(100) :='EM FALTA: ';
pouco_v varchar2(100):= 'POUCA QUANTIDADE: ';
satisfatorio_v varchar2(100):= 'NA MÉDIA: ';
acima_v varchar2(100):= 'ACIMA DA MÉDIA: ';
BEGIN
   FOR registro IN (SELECT P.nome_p, F.nome_fabri, P.estoque FROM PRODUTO P, FABRICANTE F WHERE p.cnpj_f = f.cnpj and p.nome_p = nome_p_v) LOOP 
      IF registro.estoque = 0 THEN
         em_falta_v := em_falta_v || registro.nome_p ||'-'|| registro.nome_fabri || '-' || registro.estoque|| ' | ';
      ELSIF registro.estoque < 20 THEN
         pouco_v := pouco_v || registro.nome_p ||'-'|| registro.nome_fabri || '-' || registro.estoque||' | ';
      ELSIF registro.estoque < 60 THEN
         satisfatorio_v := satisfatorio_v || registro.nome_p ||'-'|| registro.nome_fabri || '-' || registro.estoque||' | ';
      ELSE 
         acima_v := acima_v || registro.nome_p ||'-'|| registro.nome_fabri || '-' || registro.estoque||'|';
      END IF;
   END LOOP;
   RETURN em_falta_v || '|| ' || pouco_v || '|| ' || satisfatorio_v ||'|| '||acima_v;
   
END;

--%TYPE X 
--%ROWTYPE X 
--IF ELSIF X 
--CASE WHEN 
--LOOP EXIT WHEN X 
--WHILE LOOP 
--FOR IN LOOP x 
--SELECT INTO X -- tem no procedure mas tem que ver se funciona 
--CURSOR (OPEN, FETCH e CLOSE)  X
--EXCEPTION WHEN 
--USO DE PARAMETROS (IN, OUT ou IN OUT) -- tem no procedure mas tem que ver se funciona 
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
   CLOSE;
END;