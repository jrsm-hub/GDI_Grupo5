-- USO DE RECORD 
CREATE TYPE funcionario_importante IS RECORD (
   cpf funcionario.cpf_f%TYPE,
   carg funcionario.cargo%TYPE,
   sal funcionario.salario%TYPE
);




-- USO DE ESTRUTURA DE DADOS DO TIPO TABLE
TYPE Tabela IS TABLE OF funcionario_importante INDEX BY BINARY_INTEGER; 


-- NO CÓDIGO ABAIXO TEM-SE:
-- BLOCO ANONIMO 
-- CREATE PROCEDURE 
-- FOR IN
-- USO DE ESTRUTURA DE DADOS DO TIPO TABLE
-- WHILE
-- CASE WHEN
-- SELECT INTO
-- %TYPE
CREATE OR REPLACE PROCEDURE ProdutosMarca IS
counter binary_integer;

TYPE tabela IS TABLE OF produto.cnpj_f%type INDEX BY BINARY_INTEGER;

v_tabela tabela;
i binary_integer := 1;
c_max INTEGER := 0;
c_integral INTEGER := 0;
c_probiotica INTEGER := 0;
c_growth INTEGER := 0 ;

BEGIN
FOR registro IN (select * from produto) LOOP
    v_tabela(i) := registro.cnpj_f;
    i := i+1;
END LOOP;

SELECT COUNT(*) INTO counter FROM produto;

WHILE counter > 0
LOOP
    CASE v_tabela(counter) 
    
    WHEN '34346' THEN
        c_max := c_max+1;
    WHEN '78549' THEN
        c_integral :=  c_integral +1;
    WHEN '14548' THEN
        c_growth := c_growth+1;
    WHEN '15975' THEN
        c_probiotica := c_probiotica+1;
    END CASE;
    counter := counter - 1;
END LOOP;

dbms_output.put_line('QUANTIDADE PRODUTO PROBIOTICA: '|| c_probiotica || ' | ' || 'QUANTIDADE PRODUTOS MAX: '|| c_max || ' | ' || 'QUANTIDADE PRODUTO GROWTH: ' || c_growth || ' | ' || 'QUANTIDADE PRODUTOS INTEGRAL: ' || c_integral);

END ProdutosMarca;




-- NO CÓDIGO ABAIXO TEM-SE:
-- CREATE FUNCTION
-- USO DE PARAMETROS (IN, OUT ou IN OUT)
-- IF ELSIF
-- FOR IN
CREATE OR REPLACE FUNCTION situacao_estoque (nome_p_v IN produto.nome_p%TYPE) RETURN varchar2 IS
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





--%TYPE -- TEM DENTRO DO PROCEDURE
--%ROWTYPE  -- TEM DENTRO DO CURSOR
--IF ELSIF  -- TEM DENTRO DA FUNCTION
--CASE WHEN -- TEM DENTRO DO PROCEDURE
--LOOP EXIT WHEN  -- TEM DENTRO DO CURSOR
--WHILE LOOP -- TEM DENTRO DO PROCEDURE
--FOR IN LOOP -- TEM DENTRO DO PROCEDURE, DA FUNCTION E DO CURSOR
--SELECT INTO -- TEM DENTRO DO PROCEDURE
-- EXCEPTION WHEN -- TEM DENTRO DO TRIGGER DE COMANDO
-- USO DE PARAMETROS (IN, OUT ou IN OUT) -- TEM DENTRO DA FUNCTION



-- NO CÓDIGO ABAIXO TEM-SE:
-- CURSOR (OPEN, FETCH e CLOSE)
-- %ROWTYPE
-- LOOP EXIT WHEN
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
      CLOSE cliente_cur;
   END;



-- NO CÓDIGO ABAIXO TEM-SE:
-- CREATE OR REPLACE PACKAGE 
-- CREATE OR REPLACE PACKAGE BODY

CREATE OR REPLACE PACKAGE Consultas AS

   -- Marca uma Consulta
   PROCEDURE MarcarConsulta(
   cpf_c_v marcar_consulta.cpf_c%TYPE,
   crn_v marcar_consulta.crn%TYPE,
   Cod_Atendente_v marcar_consulta.Cod_Atendente%TYPE,
   data_hora_marcada_v marcar_consulta.data_hora_marcada%TYPE
   );

   -- Desmarca uma Consulta

   PROCEDURE RemoveConsulta (
   cpf_c_v marcar_consulta.cpf_c%TYPE,
   crn_v marcar_consulta.crn%TYPE,
   Cod_Atendente_v marcar_consulta.Cod_Atendente%TYPE,
   data_hora_marcada_v marcar_consulta.data_hora_marcada%TYPE
   );

   -- Exceção se não houver a consulta marcada

   e_ConsultaNaoExistente EXCEPTION;

   END Consultas;


CREATE OR REPLACE PACKAGE BODY Consultas AS

   -- Marca uma Consulta
   PROCEDURE MarcarConsulta(
   cpf_c_v marcar_consulta.cpf_c%TYPE,
   crn_v marcar_consulta.crn%TYPE,
   Cod_Atendente_v marcar_consulta.Cod_Atendente%TYPE,
   data_hora_marcada_v marcar_consulta.data_hora_marcada%TYPE
   ) 
   IS
   BEGIN
   INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES (cpf_c_v,crn_v,Cod_Atendente_v,data_hora_marcada_v);
   END;

   -- Desmarca Consulta
   PROCEDURE RemoveConsulta(
   cpf_c_v marcar_consulta.cpf_c%TYPE,
   crn_v marcar_consulta.crn%TYPE,
   Cod_Atendente_v marcar_consulta.Cod_Atendente%TYPE,
   data_hora_marcada_v marcar_consulta.data_hora_marcada%TYPE
   ) IS
   BEGIN
   DELETE FROM marcar_consulta WHERE cpf_c = cpf_c_v AND crn = crn_v AND Cod_Atendente = Cod_Atendente_v AND data_hora_marcada = data_hora_marcada_v;
   IF SQL%NOTFOUND THEN
      RAISE e_ConsultaNaoExistente;
   END IF;
   END;
END Consultas;


-- NO CÓDIGO ABAIXO TEM-SE:
--CREATE OR REPLACE TRIGGER (COMANDO) 
--CREATE OR REPLACE TRIGGER (LINHA) 

/* Exception when e Create or Replace Trigger(comando) - Será retornado uma mensagem de erro 
caso uma compra sejá inserida fora do horário de funcionamento */

CREATE OR REPLACE TRIGGER compra_fora_horario
BEFORE INSERT ON compra
DECLARE

   compra_fora_horario EXCEPTION;

BEGIN 
   IF TO_NUMBER(SYSDATE, 'hh24') > 21 OR TO_NUMBER(SYSDATe, 'HH24') < 8
   THEN
      DBMS_OUTPUT.PUT_LINE('COMPRA FORA DO HORÁRIO DE FUNCIONAMENTO');
      RAISE compra_fora_horario;
   END IF;
EXCEPTION
WHEN compra_fora_horario THEN
   Raise_application_error(-20202, 'FORA DO HORÁRIO DE FUNCIONAMENTO' || 'Não há como realizar uma compra após o horário de funcionamento');
END;

-- Create or Replace Trigger(linha) é ativado quando se tenta inserir um produto com preço de venda negativo.

CREATE or REPLACE TRIGGER preco_venda_negativo
BEFORE INSERT ON produto
FOR EACH ROW
DECLARE
   preco_venda_negativo EXCEPTION;
BEGIN
   IF : NEW.valor_revenda < 0 THEN
      DBMS_OUTPUT.PUT_LINE('VALOR DE VENDA NEGATIVO');
      RAISE preco_venda_negativo;
   END IF;
EXCEPTION
   WHEN preco_venda_negativo THEN
   Raise_application_error(-20202, 'Valor de venda negativo. ' || 'Não é permitido colocar valor de venda negativo.');
END;






