--Criação das tabelas

--Pessoa 
CREATE TABLE pessoa (
    cpf VARCHAR2 (5),
    nome VARCHAR2 (255) NOT NULL,
    sexo CHAR,
    idade NUMBER NOT NULL,
    cep VARCHAR2 (5) NOT NULL,
    numero NUMBER NOT NULL,
    complemento VARCHAR2 (255) NOT NULL,

    CONSTRAINT pessoa_pkey PRIMARY KEY (cpf),
    CONSTRAINT pessoa_checkGenero CHECK (sexo = 'M' OR sexo = 'F')
    
);


--Cliente
CREATE TABLE cliente (
    cpf_c VARCHAR2 (5),
    peso NUMBER NOT NULL,
    altura NUMBER NOT NULL,
    percentual_gordura NUMBER NOT NULL,
    biotipo VARCHAR2(4),
    plano_saude VARCHAR2(255) NOT NULL,

    CONSTRAINT cliente_pkey PRIMARY KEY (cpf_c),
    CONSTRAINT cliente_fkey FOREIGN KEY (cpf_c) REFERENCES pessoa (cpf),
    CONSTRAINT cliente_checkBiotipo CHECK (biotipo in ('ECTO', 'ENDO', 'MESO'))
    
);

--Funcionario 
CREATE TABLE funcionario (
    cpf_f VARCHAR2 (5),
    data_admissao DATE NOT NULL,
    cargo VARCHAR2 (255) NOT NULL,
    salario NUMBER (*,2),
    cpf_ger VARCHAR2 (5),
    
    CONSTRAINT funcionario_check CHECK (salario >= 1212.00),
    CONSTRAINT funcionario_pkey PRIMARY KEY (cpf_f),
    CONSTRAINT funcionario_fkey FOREIGN KEY (cpf_ger) REFERENCES funcionario (cpf_f)
);
--Nutricionista
CREATE TABLE nutricionista (
    crn VARCHAR2 (5),
    cpf_n VARCHAR2 (5),
    
    CONSTRAINT nutricionista_pkey PRIMARY KEY (crn),
    CONSTRAINT nutricionista_fkey FOREIGN KEY (cpf_n) REFERENCES funcionario (cpf_f)

);
--Vendedor
CREATE TABLE vendedor (
    cod_vendedor VARCHAR2 (3) NOT NULL,
    cpf_v VARCHAR2 (5),
    
    CONSTRAINT vendedor_pkey PRIMARY KEY (cod_vendedor),
    CONSTRAINT vendedor_fkey FOREIGN KEY (cpf_v) REFERENCES funcionario(cpf_f)
    
);
--Atendente
CREATE TABLE atendente (
    Cod_Atendente VARCHAR2 (3) NOT NULL,
    cpf_a VARCHAR2 (5),
    
    CONSTRAINT atendente_pkey PRIMARY KEY (Cod_Atendente),
    CONSTRAINT atendente_fkey FOREIGN KEY (cpf_a) REFERENCES funcionario(cpf_f)

);
--Fabricante
CREATE TABLE fabricante (
  cnpj VARCHAR2(255),
  nome_fabri VARCHAR2 (255) NOT NULL,

  CONSTRAINT fabricante_pkey PRIMARY KEY (cnpj)
);

--Produto
CREATE TABLE produto(
    cnpj_f VARCHAR2(5),
    nome_p VARCHAR2 (255),
    valor_compra NUMBER NOT NULL,
    valor_revenda NUMBER NOT NULL,
    estoque NUMBER NOT NULL,
    data_fabricacao DATE NOT NULL,
    data_vencimento DATE NOT NULL,

    CONSTRAINT produto_fkey FOREIGN KEY (cnpj_f) REFERENCES fabricante(cnpj),
    CONSTRAINT produto_pkey PRIMARY KEY (cnpj_f, nome_p)
);

--Consulta
CREATE TABLE consulta (
    cpf_c VARCHAR2 (5),
    crn VARCHAR2 (4),
    data_hora_consulta TIMESTAMP NOT NULL,

    CONSTRAINT consulta_pkey PRIMARY KEY (cpf_c, crn),
    CONSTRAINT consulta_cpf_fkey FOREIGN KEY (cpf_c) REFERENCES cliente (cpf_c),
    CONSTRAINT consulta_crn_fkey FOREIGN KEY (crn) REFERENCES nutricionista (crn)
);
-- Marcar Consulta
CREATE TABLE marcar_consulta (
    cpf_c VARCHAR2(5),
    crn VARCHAR2(5),
    Cod_Atendente VARCHAR2(5),
    data_hora_marcada TIMESTAMP NOT NULL,

    CONSTRAINT marcar_consulta_pkey PRIMARY KEY (cpf_c, crn, Cod_Atendente),
    CONSTRAINT marcar_consulta_cpf_fkey FOREIGN KEY (cpf_c) REFERENCES cliente (cpf_c),
    CONSTRAINT marcar_consulta_crn_fkey FOREIGN KEY (crn) REFERENCES nutricionista (crn),
    CONSTRAINT marcar_consulta_cod_fkey FOREIGN KEY (Cod_Atendente) REFERENCES atendente (Cod_Atendente)
);

--Prescreve
CREATE TABLE prescreve (
    cpf_c VARCHAR2(5),
    crn VARCHAR2(5),
    cnpj_f VARCHAR2(5),
    nome_p VARCHAR2(255),
    
    CONSTRAINT prescreve_pkey PRIMARY KEY (cpf_c, crn, cnpj_f, nome_p),
    CONSTRAINT prescreve_cpf_fkey FOREIGN KEY (cpf_c) REFERENCES cliente (cpf_c),
    CONSTRAINT prescreve_crn_fkey FOREIGN KEY (crn) REFERENCES nutricionista (crn),
    CONSTRAINT prescreve_prod_fkey FOREIGN KEY (cnpj_f, nome_p) REFERENCES produto (cnpj_f, nome_p)
);

--Compra
CREATE TABLE compra (
  cpf_c VARCHAR2(5),
  cnpj_f VARCHAR2(5),
  nome_p VARCHAR2(255),
  data_hora_compra TIMESTAMP NOT NULL,
  cod_vendedor VARCHAR2(3),
  
  CONSTRAINT compra_pkey PRIMARY KEY (cpf_c, cnpj_f, nome_p, data_hora_compra),
  CONSTRAINT compra_cpf_fkey FOREIGN KEY (cpf_c) REFERENCES cliente(cpf_c),
  CONSTRAINT compra_cnpj_fkey FOREIGN KEY (cnpj_f,nome_p) REFERENCES produto (cnpj_f,nome_p),
  CONSTRAINT compra_cod_fkey FOREIGN KEY (cod_vendedor) REFERENCES vendedor(cod_vendedor)
  
);

--Telefone
CREATE TABLE telefone (
    cpf_c VARCHAR2(5),
    telefone_c NUMBER NOT NULL,

    CONSTRAINT telefone_pkey PRIMARY KEY (cpf_c, telefone_c),
    CONSTRAINT telefone_fkey FOREIGN KEY (cpf_c)  REFERENCES cliente (cpf_c) 
);