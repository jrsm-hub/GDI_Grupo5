CREATE OR REPLACE TYPE tp_telefone as OBJECT (
    telefone_c NUMBER,
);

CREATE OR REPLACE TYPE tp_telefones AS VARRAY(5) OF tp_telefone;

CREATE OR REPLACE TYPE tp_pessoa as OBJECT (
    cpf VARCHAR2 (5),
    nome VARCHAR2 (255),
    sexo CHAR,
    idade NUMBER,
    cep VARCHAR2 (5),
    numero NUMBER,
    telefones tp_telefones, 
--  MEMBER PROCEDURE get_Data

) NOT FINAL NOT INSTANTIABLE;

/


/*
CREATE OR REPLACE TYPE BODY tp_pessoa AS
    MEMBER PROCEDURE get_Data IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(cpf);
        DBMS_OUTPUT.PUT_LINE(nome;
        DBMS_OUTPUT.PUT_LINE(sexo);
        DBMS_OUTPUT.PUT_LINE(idade);
        DBMS_OUTPUT.PUT_LINE(cep || ", " || numero);
        DBMS_OUTPUT.PUT_LINE(telefones);
    End;
END;
*/    



CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (
    peso NUMBER,
    altura NUMBER,
    percentual_gordura NUMBER,
    biotipo VARCHAR2(4),
    plano_saude VARCHAR2(255),

    -- OVERRIDING MEMBER PROCEDURE get_Data
);

/*CREATE OR REPLACE TYPE BODY tp_cliente AS
    OVERRIDING MEMBER PROCEDURE get_Data IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(cpf);
        DBMS_OUTPUT.PUT_LINE(nome);
        DBMS_OUTPUT.PUT_LINE(idade);
        DBMS_OUTPUT.PUT_LINE(sexo);
        DBMS_OUTPUT.PUT_LINE(peso);
        DBMS_OUTPUT.PUT_LINE(altura);
        DBMS_OUTPUT.PUT_LINE(percentual_gordura);
        DBMS_OUTPUT.PUT_LINE(plano_de_saude);
    End;
END;
*/

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa(
    data_admissao DATE,
    cargo VARCHAR2 (255),
    salario NUMBER (*,2),
    cpf_ger VARCHAR2 (5),
    -- OVERRIDING MEMBER PROCEDURE get_Data
);

CREATE OR REPLACE TYPE tp_nutricionista UNDER tp_funcionario(
    crn VARCHAR2 (3),
    --OVERRIDING MEMBER PROCEDURE print_info,
);

CREATE OR REPLACE TYPE tp_vendedor UNDER tp_pessoa (
    cod_vendedor VARCHAR2 (3),
    --OVERRIDING MEMBER PROCEDURE get_Data
);


CREATE OR REPLACE TYPE tp_atendente UNDER tp_funcionario (
    Cod_Atendente VARCHAR2 (3),
    --OVERRIDING MEMBER PROCEDURE print_info,
);

CREATE OR REPLACE TYPE tp_fabricante as OBJECT(
    cnpj VARCHAR2(255),
    nome_fabri VARCHAR2 (255)
    
);

CREATE OR REPLACE TYPE tp_produto as OBJECT(
    --cnpj_f VARCHAR2(5), PERGUNTAR PRO MONITOR
    nome_p VARCHAR2 (255),
    valor_compra NUMBER,
    valor_revenda NUMBER,
    estoque NUMBER,
    data_fabricacao DATE,
    data_vencimento DATE
);




1. CREATE OR REPLACE TYPE
2. CREATE OR REPLACE TYPE BODY
3. MEMBER PROCEDURE
4. MEMBER FUNCTION
5. ORDER MEMBER FUNCTION
6. MAP MEMBER FUNCTION
7. CONSTRUCTOR FUNCTION
8. OVERRIDING MEMBER
9. FINAL MEMBER
10. NOT INSTANTIABLE TYPE/MEMBER
11. HERANÇA DE TIPOS (UNDER/NOT FINAL)
12. ALTER TYPE
13. CREATE TABLE OF
14. WITH ROWID REFERENCES
15. REF
16. SCOPE IS
17. INSERT INTO
18. VALUE
19. VARRAY
20. NESTED TABLE