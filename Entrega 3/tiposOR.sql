--ENTIDADES

--PESSOA

CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
    cep VARCHAR2 (5),
    numero NUMBER,
    complemento VARCHAR2 (50)
);

/

CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
    telefone_c VARCHAR2(25)
);

/

CREATE OR REPLACE TYPE tp_telefones AS VARRAY(2) OF tp_telefone;

/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
    cpf VARCHAR2 (5),
    nome VARCHAR2 (255),
    sexo CHAR,
    idade NUMBER,
    endereco tp_endereco,
    telefones tp_telefones
)NOT INSTANTIABLE NOT FINAL;

/

--CLIENTE

CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (
    peso NUMBER,
    altura NUMBER,
    percentual_gordura NUMBER,
    biotipo VARCHAR2(4),
    plano_saude VARCHAR2(255),

    MEMBER PROCEDURE exibe_detalhes,
    MEMBER FUNCTION calcula_imc RETURN NUMBER,
    CONSTRUCTOR FUNCTION tp_cliente (x1 tp_pessoa) RETURN SELF AS RESULT
);

/

CREATE OR REPLACE TYPE BODY tp_cliente AS

MEMBER PROCEDURE exibe_detalhes IS

BEGIN
DBMS_OUTPUT.PUT_LINE('INFORMAÇÕES DO CLIENTE: ');
DBMS_OUTPUT.PUT_LINE('PESO: ' || peso);
DBMS_OUTPUT.PUT_LINE('ALTURA: '|| altura);
DBMS_OUTPUT.PUT_LINE('PERCENTUAL GORDURA: ' || percentual_gordura);
DBMS_OUTPUT.PUT_LINE('BIOTIPO: ' ||  biotipo);
DBMS_OUTPUT.PUT_LINE('PLANO DE SAÚDE: ' ||  plano_saude);
END;

MEMBER FUNCTION calcula_imc RETURN NUMBER IS

BEGIN 
RETURN peso/(altura**2);
END;

CONSTRUCTOR FUNCTION tp_cliente(x1 tp_cliente) RETURN SELF AS RESULT IS
BEGIN
    cpf := x1.cpf; 
    nome := x1.nome; 
    sexo := x1.sexo; 
    idade := x1.idade;
    endereco := x1.endereco; 
    telefones := x1.telefones;
    peso := x1.peso; 
    altura := x1.altura;
    percentual_gordura := x1.percentual_gordura; 
    biotipo := x1.biotipo; 
    plano_saude := x1.plano_saude;  
    RETURN;
END;

/
--FUNCIONARIO

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa(
    data_admissao DATE,
    cargo VARCHAR2 (255),
    salario FLOAT,
    MEMBER PROCEDURE exibe_detalhes
)NOT FINAL;

/

ALTER TYPE tp_funcionario ADD ATTRIBUTE(gerente REF tp_funcionario) CASCADE;

/

CREATE OR REPLACE TYPE BODY tp_funcionario AS

MEMBER PROCEDURE exibe_detalhes IS

BEGIN
DBMS_OUTPUT.PUT_LINE('INFORMAÇÕES DO FUNCIONARIO: ');
DBMS_OUTPUT.PUT_LINE('DATA DE ADMISSÃO: ' || data_admissao);
DBMS_OUTPUT.PUT_LINE('CARGO: '|| cargo);
DBMS_OUTPUT.PUT_LINE('SALÁRIO: R$ ' || salario);
END;


/
--NUTRICIONISTA

CREATE OR REPLACE TYPE tp_nutricionista UNDER tp_funcionario(
    crn VARCHAR2 (3),
    OVERRIDING MEMBER PROCEDURE exibe_detalhes

);

/

CREATE OR REPLACE TYPE BODY tp_nutricionista AS

MEMBER PROCEDURE exibe_detalhes IS

BEGIN
DBMS_OUTPUT.PUT_LINE('INFORMAÇÕES DO NUTRICIONISTA: ');
DBMS_OUTPUT.PUT_LINE('CRN: ' || crn);
DBMS_OUTPUT.PUT_LINE('DATA DE ADMISSÃO: ' || data_admissao);
DBMS_OUTPUT.PUT_LINE('SALÁRIO: R$ ' || salario);
END;

/

--VENDEDOR

CREATE OR REPLACE TYPE tp_vendedor UNDER tp_funcionario (
    cod_vendedor VARCHAR2 (3)
   
);

/

--ATENDENTE

CREATE OR REPLACE TYPE tp_atendente UNDER tp_funcionario (
    Cod_Atendente VARCHAR2 (3)
   
);

/

--PRODUTO

CREATE OR REPLACE TYPE tp_produto AS OBJECT(
    codigo_prod  VARCHAR2 (3),
    nome_p VARCHAR2 (255),
    valor_compra NUMBER,
    valor_revenda NUMBER,
    estoque NUMBER,
    data_fabricacao DATE,
    data_vencimento DATE,

    ORDER MEMBER FUNCTION comparaEstoque(X tp_produto) RETURN NUMBER
    
);

/

CREATE OR REPLACE TYPE BODY tp_produto AS 

ORDER MEMBER FUNCTION comparaEstoque (X tp_produto) RETURN INTEGER IS

    BEGIN
    RETURN SELF.estoque - X.estoque;
    END;

END;

/
-- FABRICANTE

CREATE OR REPLACE TYPE tp_nt_fornece AS TABLE OF tp_produto;

/

CREATE OR REPLACE TYPE tp_fabricante AS OBJECT(
    cnpj VARCHAR2(255),
    nome_fabri VARCHAR2 (255),
    prod_fornecido tp_nt_fornece,

    FINAL MAP MEMBER FUNCTION fabricanteToStr RETURN VARCHAR2
    
);

/

CREATE OR REPLACE TYPE BODY tp_fabricante AS 

FINAL MAP MEMBER FUNCTION fabricanteToStr RETURN VARCHAR2 IS
    
    nome_f VARCHAR2(255) := nome_fabri;

    BEGIN
    RETURN nome_f;
    END;

END;

/

--CONSULTA

CREATE OR REPLACE TYPE tp_nt_prescreve AS TABLE OF tp_produto;

/

CREATE OR REPLACE TYPE tp_consulta AS OBJECT(
    cliente REF tp_cliente,
    nutricionista REF tp_nutricionista,
    prod_prescritos tp_nt_prescreve,
    data_hora_consulta TIMESTAMP
);

/

-- RELACIONAMENTOS TRIPLOS

--MARCAR CONSULTA
CREATE OR REPLACE TYPE tp_MarcarConsulta AS OBJECT(
    cliente REF tp_cliente,
    atendente REF tp_atendente,
    nutricionista REF tp_nutricionista,
    data_hora_marcada TIMESTAMP
);

/

--COMPRA

CREATE OR REPLACE TYPE tp_nt_prod_compra AS TABLE OF tp_produto;

/

CREATE OR REPLACE TYPE tp_compra AS OBJECT(
    cliente REF tp_cliente,
    vendedor REF tp_vendedor,
    prod_comprados tp_nt_prod_compra,
    data_hora_compra TIMESTAMP

);

/*

CHECKLIST

1. CREATE OR REPLACE TYPE ✔️
2. CREATE OR REPLACE TYPE BODY ✔️
3. MEMBER PROCEDURE ✔️ -- exibe_detalhes(falta testar)
4. MEMBER FUNCTION✔️ -- calcula_imc(falta testar)
5. ORDER MEMBER FUNCTION ✔️ -- comparaEstoque(falta testar) 
6. MAP MEMBER FUNCTION ✔️ -- fabricanteToStr -- falta testar
7. CONSTRUCTOR FUNCTION ✔️ -- cliente (falta testar)
8. OVERRIDING MEMBER ✔️ -- exibe_detalhes (tp_nutricionista)
9. FINAL MEMBER ✔️ -- fabricanteToStr
10. NOT INSTANTIABLE TYPE/MEMBER ✔️ -- tp_pessoa
11. HERANCA DE TIPOS (UNDER/NOT FINAL) ✔️
12. ALTER TYPE ✔️ -- tp_funcionario (ADD gerente)
13. CREATE TABLE OF ✔️
14. WITH ROWID REFERENCES✔️
15. REF ✔️
16. SCOPE IS ✔️
17. INSERT INTO
18. VALUE
19. VARRAY ✔️
20. NESTED TABLE ✔️

*/