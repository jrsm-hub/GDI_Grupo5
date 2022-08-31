-- Povoamento das tabelas

--INSERINDO PESSOA ♥
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('13418','Ana Luiza Porto','F',29,'26147',123,'apto 603');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('22548','Pedro Henrique Pires','M',21,'26157',144,'apto 402');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('57605','Leonardo Moraes','M',22,'26150',135,'apto 1301');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('13331','Arthur Pereira','M',27,'26145',98,'apto 504');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('42619','Benício Ramos','M',31,'50010',932,'apto 2102');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('98977','Laís Rocha','F',20,'50010',932,'apto 1602');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('12513','Raul Nascimento','M',40,'50010',966,'apto 701');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('31819','Nathan Peixoto','M',23,'50020',1200,'apto 301');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('32387','Alícia Sales','F',17,'50020',1216,'apto 102');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('81783','Júlia Pires','F',25,'50020',1200,'apto 404');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('39511','Breno da Rocha','M',28,'50020',1280,'apto 601');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('00182','Thomas Alves','M',30,'52050',610,'apto 1802');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('68703','Diego Silveira','M',19,'52050',606,'apto 2701');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('69221','João Pedro Silveira','M',24,'52050',602,'apto 602');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('48509','Caroline Monteiro','F',21,'52050',654,'apto 1503');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('34581','Bruno Barros','M',32,'52050',595,'apto 202');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('37515','Letícia Santos','F',27,'51030',222,'apto 301');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('40942','Diego Aragão','M',36,'51030',242,'apto 801');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('93818','Agatha Lima','F',24,'52030',450,'apto 101');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('89670','Maria Cecília Pereira','F',28,'50030',312,'apto 2402');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('73416','Luiz Fernando Pires','M',16,'51010',1462,'apto 902');
INSERT INTO pessoa (cpf, nome, sexo, idade, cep, numero, complemento) VALUES
   ('32966','Cecília Santos','F',23,'50020',1462,'apto 1101');
   
--Inserindo Cliente 14 clientes ♥
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('32387', 58, 164, 28, 'ENDO', 'UNIMED');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('81783', 44, 168, 17, 'ECTO', 'FISCO');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('39511', 82, 177, 13, 'MESO', 'SULAMERICA');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('00182', 94, 184, 19, 'ENDO', 'AMIL');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('68703', 64, 182, 14, 'ECTO', 'HAPVIDA');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('69221', 88, 174, 22, 'ENDO', 'UNIMED');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('37515', 68, 166, 14, 'MESO', 'FUSEX');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('40942', 96, 185, 7, 'MESO', 'UNIMED');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('93818', 60, 155, 24, 'ECTO', 'UNIMED');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('89670', 65, 160, 24, 'MESO', 'AMIL');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('73416', 58, 164, 28, 'ECTO', 'SULAMERICA');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('32966', 74, 162, 32, 'ENDO', 'HAPVIDA');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('34581', 71, 173, 18, 'ENDO', 'HAPVIDA');
INSERT INTO cliente (cpf_c, peso, altura, percentual_gordura, biotipo, plano_saude) VALUES
('48509', 76, 175, 18, 'MESO', 'UNIMED');

--Inserindo Funcionario 8 funcionariosTO_DATE('14-SEP-2000', 'DD-MON-YYYY') ♥
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('12513', to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, '12513');
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('42619', to_date('2021-06-02','yyyy-mm-dd'), 'VEND', 3000.00, '42619');
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('13418', to_date('2022-04-17','yyyy-mm-dd'), 'NUTRI', 9500.00, '13418');
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('31819', to_date('2021-03-20','yyyy-mm-dd'), 'VEND', 2200.00, '12513');
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('98977', to_date('2021-03-30','yyyy-mm-dd'), 'ATEND', 1800.00, '13418');
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('13331', to_date('2022-01-22', 'yyyy-mm-dd'), 'NUTRI', 6400.00, '12513');
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('57605', to_date('2022-01-22','yyyy-mm-dd'), 'NUTRI', 6400.03, '12513');
INSERT INTO funcionario (cpf_f, data_admissao, cargo, salario, cpf_ger) VALUES
('22548', to_date('2022-11-07', 'yyyy-mm-dd'), 'ATEND', 1800.00, '12513');


--Inserindo Nutricionista 4 nutricionistas ♥
INSERT INTO nutricionista (crn, cpf_n) VALUES 
('087', '12513');
INSERT INTO nutricionista (crn, cpf_n) VALUES 
('870', '13331');
INSERT INTO nutricionista (crn, cpf_n) VALUES 
('404', '57605');
INSERT INTO nutricionista (crn, cpf_n) VALUES 
('101', '13418');

--Inserindo Vendedor 2 vendedores ♥
INSERT INTO vendedor (cod_vendedor, cpf_v) VALUES 
('001', '31819');
INSERT INTO vendedor (cod_vendedor, cpf_v) VALUES 
('010', '42619');

--Inserindo Atendente 2 atendentes ♥
INSERT INTO atendente (Cod_Atendente, cpf_a) VALUES 
('012', '98977');
INSERT INTO atendente (Cod_Atendente, cpf_a) VALUES 
('022', '22548');

-- Inserindo Fabricante ♥
INSERT INTO fabricante (cnpj, nome_fabri) VALUES
('34346','MAX');
INSERT INTO fabricante (cnpj, nome_fabri) VALUES
('78549','INTEGRAL');
INSERT INTO fabricante (cnpj, nome_fabri) VALUES
('14548','GROWTH');
INSERT INTO fabricante (cnpj, nome_fabri) VALUES
('15975','PROBIOTICA');

-- Inserindo Produto ♥
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('34346','WHEY', 80, 100, 45,  to_date('2022-04-16','yyyy-mm-dd'), to_date('2025-04-16','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('34346','CREATINA', 100, 125, 10, to_date('2021-01-1','yyyy-mm-dd'), to_date('2022-01-01','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('34346','ALBUMINA', 60, 85, 00, to_date('2021-05-11','yyyy-mm-dd'), to_date('2024-05-11','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('34346','CAFEINA', 20, 40, 32, to_date('2021-08-07','yyyy-mm-dd'), to_date('2023-08-07','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('78549','WHEY', 100, 120, 75, to_date('2021-06-07','yyyy-mm-dd'), to_date('2023-06-07','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('78549','CREATINA', 105, 130, 00, to_date('2020-09-30','yyyy-mm-dd'), to_date('2022-09-30','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('78549','ALBUMINA', 55, 70, 85, to_date('2022-06-27','yyyy-mm-dd'), to_date('2024-06-27','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('78549','CAFEINA', 25, 35, 55, to_date('2021-09-04','yyyy-mm-dd'), to_date('2024-09-04','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('14548','WHEY', 75, 90, 22, to_date('2021-03-04','yyyy-mm-dd'), to_date('2023-03-04','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('14548','CREATINA', 80, 100, 17, to_date('2021-06-07','yyyy-mm-dd'), to_date('2024-06-07','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('14548','ALBUMINA', 50, 65, 71, to_date('2022-06-13','yyyy-mm-dd'), to_date('2024-04-17','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('14548','CAFEINA', 22, 35, 14, to_date('2022-01-30','yyyy-mm-dd'), to_date('2025-01-30','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('15975','WHEY', 99, 125, 12, to_date('2022-03-17','yyyy-mm-dd'), to_date('2025-03-17','yyyy-mm-dd') );
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('15975','CREATINA', 75, 105, 100, to_date('2021-06-17','yyyy-mm-dd'), to_date('2024-06-17','yyyy-mm-dd'));
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('15975','ALBUMINA', 55, 70, 50, to_date('2022-01-22','yyyy-mm-dd'), to_date('2024-01-22','yyyy-mm-dd') );
INSERT INTO produto (cnpj_f, nome_p, valor_compra, valor_revenda, estoque, data_fabricacao, data_vencimento) VALUES
('15975','CAFEINA', 15, 30, 65, to_date('2022-08-30','yyyy-mm-dd'), to_date('2025-08-30','yyyy-mm-dd') );

--Inserindo Consulta TO_TIMESTAMP('2022-02-09 07:00:00', 'YYYY-MM-DD HH24:MI:SS' ♥
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('32387', '087', TO_TIMESTAMP('2022-09-04 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('39511', '870', TO_TIMESTAMP('2022-09-04 15:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('68703', '404', TO_TIMESTAMP('2022-09-04 8:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('93818', '101', TO_TIMESTAMP('2022-09-04 14:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('32966', '404', TO_TIMESTAMP('2022-09-04 10:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('32387', '087', TO_TIMESTAMP('2022-10-07 14:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('39511', '870', TO_TIMESTAMP('2022-10-05 16:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('68703', '404', TO_TIMESTAMP('2022-10-04 9:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('93818', '101', TO_TIMESTAMP('2022-10-10 15:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('32966', '404', TO_TIMESTAMP('2022-10-03 10:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('81783', '087', TO_TIMESTAMP('2022-09-05 14:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('00182', '870', TO_TIMESTAMP('2022-09-06 15:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('69221', '404', TO_TIMESTAMP('2022-09-05 9:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('40942', '101', TO_TIMESTAMP('2022-09-05 15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('48509', '404', TO_TIMESTAMP('2022-09-05 10:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('81783', '087', TO_TIMESTAMP('2022-10-05 14:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('00182', '870', TO_TIMESTAMP('2022-10-05 15:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('69221', '404', TO_TIMESTAMP('2022-10-06 9:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('40942', '101', TO_TIMESTAMP('2022-10-12 15:30', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO consulta(cpf_c, crn, data_hora_consulta) VALUES
('48509', '404', TO_TIMESTAMP('2022-10-06 10:30', 'YYYY-MM-DD HH24:MI:SS'));

--Inserindo Marcar Consulta TO_TIMESTAMP('2022-02-09 07:00:00', 'YYYY-MM-DD HH24:MI:SS'
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('32387', '087', '012',TO_TIMESTAMP('2022-09-04 14:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('39511', '870', '012',TO_TIMESTAMP('2022-09-04 15:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('68703', '404','022', TO_TIMESTAMP('2022-09-04 8:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('93818', '101','012', TO_TIMESTAMP('2022-09-04 14:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('32966', '404','022', TO_TIMESTAMP('2022-09-04 10:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('32387', '087', '012',TO_TIMESTAMP('2022-10-07 14:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('39511', '870', '012',TO_TIMESTAMP('2022-10-05 16:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('68703', '404', '022', TO_TIMESTAMP('2022-10-04 9:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('93818', '101', '012',TO_TIMESTAMP('2022-10-10 15:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('32966', '404', '022', TO_TIMESTAMP('2022-10-03 10:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('81783', '087', '012',TO_TIMESTAMP('2022-09-05 14:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('00182', '870', '012',TO_TIMESTAMP('2022-09-06 15:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('69221', '404','022', TO_TIMESTAMP('2022-09-05 9:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('40942', '101', '012',TO_TIMESTAMP('2022-09-05 15:00','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('48509', '404','022', TO_TIMESTAMP('2022-09-05 10:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('81783', '087', '012',TO_TIMESTAMP('2022-10-05 14:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('00182', '870', '012',TO_TIMESTAMP('2022-10-05 15:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('69221', '404','022', TO_TIMESTAMP('2022-10-06 9:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('40942', '101', '012',TO_TIMESTAMP('2022-10-12 15:30','YYYY-MM-DD HH24:MI:SS'));
INSERT INTO marcar_consulta(cpf_c, crn, Cod_Atendente, data_hora_marcada) VALUES
('48509', '404','022', TO_TIMESTAMP('2022-10-06 10:30','YYYY-MM-DD HH24:MI:SS'));

-- Inserindo Compra
INSERT INTO compra (cpf_c, cnpj_f, nome_p, data_hora_compra, cod_vendedor) VALUES 
('32387','34346','WHEY',TO_TIMESTAMP('2022-09-04 15:35','YYYY-MM-DD HH24:MI:SS'),'001');
INSERT INTO compra (cpf_c, cnpj_f, nome_p, data_hora_compra, cod_vendedor) VALUES 
('39511','78549','CREATINA',TO_TIMESTAMP('2022-09-04 16:35','YYYY-MM-DD HH24:MI:SS'),'001');
INSERT INTO compra (cpf_c, cnpj_f, nome_p, data_hora_compra, cod_vendedor) VALUES 
('68703','14548','ALBUMINA',TO_TIMESTAMP('2022-09-04 09:35','YYYY-MM-DD HH24:MI:SS'),'010');
INSERT INTO compra (cpf_c, cnpj_f, nome_p, data_hora_compra, cod_vendedor) VALUES 
('93818','15975','WHEY',TO_TIMESTAMP('2022-09-04 14:35','YYYY-MM-DD HH24:MI:SS'),'001');

-- Inserindo Prescreve ♥
INSERT INTO prescreve (cpf_c, crn, cnpj_f, nome_p) VALUES 
('32387','087','34346','WHEY');
INSERT INTO prescreve (cpf_c, crn, cnpj_f, nome_p) VALUES 
('39511','870','78549','CREATINA');
INSERT INTO prescreve (cpf_c, crn, cnpj_f, nome_p) VALUES 
('68703','404','14548','ALBUMINA');
INSERT INTO prescreve (cpf_c, crn, cnpj_f, nome_p) VALUES 
('93818','101','15975','WHEY');
INSERT INTO prescreve (cpf_c, crn, cnpj_f, nome_p) VALUES 
('00182','870','15975','CREATINA');
INSERT INTO prescreve (cpf_c, crn, cnpj_f, nome_p) VALUES 
('40942','101','14548','CAFEINA');

--Inserindo Telefone ♥
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('32387', 81989526545);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('81783', 81981491538);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('39511', 81981263621);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('00182', 81997132626);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('68703', 81985930886);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('69221', 81996977272);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('37515', 81989785264);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('40942', 81994517784);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('93818', 81970449495);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('89670', 81984314731);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('73416', 81988686426);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('32966', 81995405235);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('34581', 81973388446);
INSERT INTO telefone (cpf_c, telefone_c) VALUES
('48509', 81991933671);