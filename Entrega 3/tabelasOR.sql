-- TABELA PESSOA
/*
CREATE TABLE tb_pessoa OF tp_pessoa(
    cpf PRIMARY KEY,
    nome NOT NULL,
    sexo NOT NULL CHECK (sexo = 'M' OR sexo = 'F'),
    idade  NOT NULL,
    endereco NOT NULL

);*/


-- TABELA CLIENTE
CREATE TABLE tb_cliente OF tp_cliente(
    cpf PRIMARY KEY,
    nome NOT NULL,
    sexo NOT NULL CHECK (sexo = 'M' OR sexo = 'F'),
    idade NOT NULL,
    endereco NOT NULL,
    telefones NOT NULL,
    peso NOT NULL,
    altura NOT NULL,
    percentual_gordura NOT NULL,
    biotipo NOT NULL,
    plano_saude NOT NULL
);


-- TABELA FUNCIONARIO

CREATE TABLE tb_funcionario OF tp_funcionario(
    cpf PRIMARY KEY,
    nome NOT NULL,
    sexo NOT NULL CHECK (sexo = 'M' OR sexo = 'F'),
    idade NOT NULL,
    endereco NOT NULL,
    data_admissao NOT NULL,
    cargo NOT NULL,
    salario NOT NULL,
    gerente WITH ROWID REFERENCES tb_funcionario
);

-- TABELA NUTRICIONISTA

CREATE TABLE tb_nutricionista OF tp_nutricionista(
    cpf NOT NULL UNIQUE,
    nome NOT NULL,
    sexo NOT NULL CHECK (sexo = 'M' OR sexo = 'F'),
    idade NOT NULL,
    endereco NOT NULL,
    data_admissao NOT NULL,
    cargo NOT NULL,
    salario NOT NULL,
    gerente SCOPE IS tb_nutricionista,
    crn PRIMARY KEY
);

-- TABELA VENDEDOR

CREATE TABLE tb_vendedor OF tp_vendedor(
    cod_vendedor PRIMARY KEY,
    cpf NOT NULL UNIQUE,
    nome NOT NULL,
    sexo NOT NULL CHECK (sexo = 'M' OR sexo = 'F'),
    idade NOT NULL,
    endereco NOT NULL,
    data_admissao NOT NULL,
    cargo NOT NULL,
    salario NOT NULL,
    gerente SCOPE IS tb_vendedor
);

-- TABELA ATENDENTE

CREATE TABLE tb_atendente OF tp_atendente(
    Cod_Atendente PRIMARY KEY,
    cpf NOT NULL UNIQUE,
    nome NOT NULL,
    sexo NOT NULL CHECK (sexo = 'M' OR sexo = 'F'),
    idade NOT NULL,
    endereco NOT NULL,
    data_admissao NOT NULL,
    cargo NOT NULL,
    salario NOT NULL,
    gerente SCOPE IS tb_atendente
);

-- TABELA PRODUTO

CREATE TABLE tb_produto OF tp_produto(
    codigo_prod  PRIMARY KEY,
    nome_p NOT NULL,
    valor_compra NOT NULL,
    valor_revenda NOT NULL,
    estoque NOT NULL,
    data_fabricacao NOT NULL,
    data_vencimento NOT NULL
);



-- TABELA FABRICANTE

CREATE TABLE tb_fabricante OF tp_fabricante(
    cnpj PRIMARY KEY,
    nome_fabri NOT NULL
)
NESTED TABLE prod_fornecido STORE AS tb_prod_fornecido;

-- TABELA CONSULTA

CREATE TABLE tb_consulta OF tp_consulta(
    cliente_consulta WITH ROWID REFERENCES tb_cliente NOT NULL,
    nutricionista_consulta WITH ROWID REFERENCES tb_nutricionista NOT NULL
)
NESTED TABLE prod_prescritos STORE AS tb_prod_prescritos;

-- TABELA MARCAR CONSULTA

CREATE TABLE tb_MarcarConsulta OF tp_MarcarConsulta(
    cliente_MarcarConsulta WITH ROWID REFERENCES tb_cliente NOT NULL,
    atendente_MarcarConsulta WITH ROWID REFERENCES tb_atendente NOT NULL,
    nutricionista_MarcarConsulta WITH ROWID REFERENCES tb_nutricionista NOT NULL,
    data_hora_marcada NOT NULL
);

-- TABELA COMPRA

CREATE TABLE tb_compra OF tp_compra(
    cliente_compra WITH ROWID REFERENCES tb_cliente NOT NULL,
    vendedor_compra WITH ROWID REFERENCES tb_vendedor NOT NULL,
    data_hora_compra NOT NULL
)
NESTED TABLE prod_comprados STORE AS tb_prod_comprados;