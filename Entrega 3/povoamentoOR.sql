--PESSOA

INSERT INTO tb_pessoa VALUES('13418','Ana Luiza Porto','F',29,tp_endereco('26147',123,'apto 603'));
INSERT INTO tb_pessoa VALUES('22548','Pedro Henrique Pires','M',21,tp_endereco('26157',144,'apto 402'));
INSERT INTO tb_pessoa VALUES('57605','Leonardo Moraes','M',22,tp_endereco('26150',135,'apto 1301'));
INSERT INTO tb_pessoa VALUES('13331','Arthur Pereira','M',27,tp_endereco('26145',98,'apto 504'));
INSERT INTO tb_pessoa VALUES('42619','Benício Ramos','M',31,tp_endereco('50010',932,'apto 2102'));
INSERT INTO tb_pessoa VALUES('98977','Laís Rocha','F',20,tp_endereco('50010',932,'apto 1602'));
INSERT INTO tb_pessoa VALUES('12513','Raul Nascimento','M',40,tp_endereco('50010',966,'apto 701'));
INSERT INTO tb_pessoa VALUES('31819','Nathan Peixoto','M',23,tp_endereco('50020',1200,'apto 301'));
INSERT INTO tb_pessoa VALUES('32387','Alícia Sales','F',17,tp_endereco('50020',1216,'apto 102'));
INSERT INTO tb_pessoa VALUES('81783','Júlia Pires','F',25,tp_endereco('50020',1200,'apto 404'));
INSERT INTO tb_pessoa VALUES('39511','Breno da Rocha','M',28,tp_endereco('50020',1280,'apto 601'));
INSERT INTO tb_pessoa VALUES('00182','Thomas Alves','M',30,tp_endereco('52050',610,'apto 1802'));
INSERT INTO tb_pessoa VALUES('68703','Diego Silveira','M',19,tp_endereco('52050',606,'apto 2701'));
INSERT INTO tb_pessoa VALUES('69221','João Pedro Silveira','M',24,tp_endereco('52050',602,'apto 602'));
INSERT INTO tb_pessoa VALUES('48509','Caroline Monteiro','F',21,tp_endereco('52050',654,'apto 1503'));
INSERT INTO tb_pessoa VALUES('34581','Bruno Barros','M',32,tp_endereco('52050',595,'apto 202'));
INSERT INTO tb_pessoa VALUES('37515','Letícia Santos','F',27,tp_endereco('51030',222,'apto 301'));
INSERT INTO tb_pessoa VALUES('40942','Diego Aragão','M',36,tp_endereco('51030',242,'apto 801'));
INSERT INTO tb_pessoa VALUES('93818','Agatha Lima','F',24,tp_endereco('52030',450,'apto 101'));
INSERT INTO tb_pessoa VALUES('89670','Maria Cecília Pereira','F',28,tp_endereco('50030',312,'apto 2402'));
INSERT INTO tb_pessoa VALUES('73416','Luiz Fernando Pires','M',16,tp_endereco('51010',1462,'apto 902'));
INSERT INTO tb_pessoa VALUES('32966','Cecília Santos','F',23,tp_endereco('50020',1462,'apto 1101'));


-- CLIENTE

INSERT INTO tb_cliente VALUES ('32387', 'Alícia Sales', 'F', 17, tp_endereco('50020', 1216 , 'apto 102'), tp_telefones(tp_telefone('81989526545')), 58, 164, 28, 'ENDO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('81783', 'Júlia Pires', 'F', 25, tp_endereco('50020', 1200 ,'apto 404'), tp_telefones(tp_telefone('81981491538')), 44, 168, 17, 'ECTO', 'FISCO');
INSERT INTO tb_cliente VALUES ('39511', 'Breno da Rocha', 'M', 28, tp_endereco('50020', 1280 ,'apto 601'), tp_telefones(tp_telefone('81981263621')), 82, 177, 13, 'MESO', 'SULAMERICA');
INSERT INTO tb_cliente VALUES ('00182', 'Thomas Alves', 'M', 30, tp_endereco('52050', 610 ,'apto 1802'), tp_telefones(tp_telefone('81997132626')), 94, 184, 19, 'ENDO', 'AMIL');
INSERT INTO tb_cliente VALUES ('68703', 'Diego Silveira', 'M', 19, tp_endereco('52050', 606,'apto 2701'), tp_telefones(tp_telefone('81985930886')), 64, 182, 14, 'ECTO', 'HAPVIDA');
INSERT INTO tb_cliente VALUES ('69221', 'João Pedro Silveira', 'M', 24, tp_endereco('52050', 602, 'apto 602'), tp_telefones(tp_telefone('81996977272')), 88, 174, 22, 'ENDO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('48509', 'Caroline Monteiro', 'F', 21, tp_endereco('52050', 654, 'apto 1503' ), tp_telefones(tp_telefone('81991933671')), 76, 175, 18, 'MESO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('34581', 'Bruno Barros', 'M', 32, tp_endereco('52050', 595, 'apto 202'), tp_telefones(tp_telefone('81973388446')), 71, 173, 18, 'ENDO', 'HAPVIDA');
INSERT INTO tb_cliente VALUES ('37515', 'Letícia Santos', 'F', 27, tp_endereco('51030', 222, 'apto 301'), tp_telefones(tp_telefone('81989785264')), 68, 166, 14, 'MESO', 'FUSEX');
INSERT INTO tb_cliente VALUES ('12345', 'Pedro', 'M', 21, tp_endereco('12345', 12 ,'apto 02'), tp_telefones(tp_telefone('81-9 85464766')), 70, 175, 18, 'MESO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('12345', 'Pedro', 'M', 21, tp_endereco('12345', 12 ,'apto 02'), tp_telefones(tp_telefone('81-9 85464766')), 70, 175, 18, 'MESO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('12345', 'Pedro', 'M', 21, tp_endereco('12345', 12 ,'apto 02'), tp_telefones(tp_telefone('81-9 85464766')), 70, 175, 18, 'MESO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('12345', 'Pedro', 'M', 21, tp_endereco('12345', 12 ,'apto 02'), tp_telefones(tp_telefone('81-9 85464766')), 70, 175, 18, 'MESO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('12345', 'Pedro', 'M', 21, tp_endereco('12345', 12 ,'apto 02'), tp_telefones(tp_telefone('81-9 85464766')), 70, 175, 18, 'MESO', 'UNIMED');

--FUNCIONARIO
INSERT INTO tb_funcionario VALUES (tp_funcionario('12513','Raul Nascimento','M',40,tp_endereco('50010',966,'apto 701'),to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, NULL)); --NOS CASOS QUE O CARA É GERENTE DELE MESMO BOTA NULL
INSERT INTO tb_funcionario VALUES (tp_funcionario('42619','Benício Ramos','M',31, tp_endereco('50010',932,'apto 2102'), to_date('2021-06-02','yyyy-mm-dd'), 'VEND', 3000.00,NULL));
INSERT INTO tb_funcionario VALUES (tp_funcionario('31819','Nathan Peixoto','M',23, tp_endereco('50020',1200,'apto 301'), to_date('2021-03-20','yyyy-mm-dd'), 'VEND', 2200.00,   (SELECT REF(F) FROM tb_funcionario F WHERE cpf = '12513')));  

--NUTRICIONISTA

INSERT INTO tb_nutricionista VALUES (tp_nutricionista('12513', 'Raul Nascimento', 'M', 40, tp_endereco('50010', 966,'apto 701'), to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, NULL, '087'));
INSERT INTO tb_nutricionista VALUES (tp_nutricionista('13331','Arthur Pereira','M',27, tp_endereco('26145',98,'apto 504'), to_date('2022-01-22', 'yyyy-mm-dd'), 'NUTRI', 6400.00, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513'), '870'));

--VENDEDOR

INSERT INTO tb_vendedor VALUES (tp_vendedor('31819','Nathan Peixoto','M',23, tp_endereco('50020', 1200,'apto 301'),  to_date('2021-03-20','yyyy-mm-dd'), 'VEND', 6500.00, NULL, '001'));
INSERT INTO tb_vendedor VALUES (tp_vendedor('42619','Benício Ramos','M',31, tp_endereco('50010', 932,'apto 2102'),  to_date('2021-06-02','yyyy-mm-dd'), 'VEND', 3000.00, (SELECT REF(V) FROM tb_vendedor V WHERE cpf = '31819'), '010'));

--ATENDENTE
INSERT INTO tb_atendente VALUES (tp_atendente('22548','Pedro Henrique Pires','M',21,tp_endereco('26157',144,'apto 402'), to_date('2022-11-07', 'yyyy-mm-dd'), 'ATEND', 2000.00, NULL, '022'));
INSERT INTO tb_atendente VALUES (tp_atendente('98977','Laís Rocha','F',20,tp_endereco('50010',932,'apto 1602'), to_date('2021-03-30','yyyy-mm-dd'), 'ATEND', 1800.00, (SELECT REF(F) FROM tb_atendente F WHERE cpf = '22548'), '012'));

--PRODUTO
--TROCAR O PRIMEIRO CODIGO POR UM VALOR ALEATORIO DE 3 DIGITOS (NAO PODEM SER REPETIDOS)
INSERT INTO tb_produto VALUES (tp_produto('343','WHEY', 80, 100, 45,  to_date('2022-04-16','yyyy-mm-dd'), to_date('2025-04-16','yyyy-mm-dd')));

--FABRICANTE

INSERT INTO tb_fabricante VALUES ('34346','MAX', tp_nt_fornece(tp_produto('343','WHEY', 80, 100, 45,  to_date('2022-04-16','yyyy-mm-dd'), to_date('2025-04-16','yyyy-mm-dd'))));

--CONSULTA

INSERT INTO tb_consulta VALUES (tp_cliente('32387', 'Alícia Sales', 'F', 17, tp_endereco('50020', 1216 , 'apto 102'), tp_telefones(tp_telefone('81989526545')), 58, 164, 28, 'ENDO', 'UNIMED'), 
                                tp_nutricionista('12513', 'Raul Nascimento', 'M', 40, tp_endereco('50010', 966,'apto 701'), to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, NULL, '087'),
                                tp_nt_prescreve(tp_produto('343','WHEY', 80, 100, 45,  to_date('2022-04-16','yyyy-mm-dd'), to_date('2025-04-16','yyyy-mm-dd'))),
                                TO_TIMESTAMP('2022-09-04 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));
--MARCAR CONSULTA

INSERT INTO tb_MarcarConsulta VALUES (tp_cliente('32387', 'Alícia Sales', 'F', 17, tp_endereco('50020', 1216 , 'apto 102'), tp_telefones(tp_telefone('81989526545')), 58, 164, 28, 'ENDO', 'UNIMED'),
                                      tp_atendente('98977','Laís Rocha','F',20,tp_endereco('50010',932,'apto 1602'), to_date('2021-03-30','yyyy-mm-dd'), 'ATEND', 1800.00, (SELECT REF(F) FROM tb_atendente F WHERE cpf = '22548'), '012'),
                                      tp_nutricionista('12513', 'Raul Nascimento', 'M', 40, tp_endereco('50010', 966,'apto 701'), to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, NULL, '087'),
                                      TO_TIMESTAMP('2022-09-04 14:30','YYYY-MM-DD HH24:MI:SS'));
--COMPRA

INSERT INTO tb_compra VALUES (tp_cliente('32387', 'Alícia Sales', 'F', 17, tp_endereco('50020', 1216 , 'apto 102'), tp_telefones(tp_telefone('81989526545')), 58, 164, 28, 'ENDO', 'UNIMED'),
                              tp_vendedor('31819','Nathan Peixoto','M',23, tp_endereco('50020', 1200,'apto 301'),  to_date('2021-03-20','yyyy-mm-dd'), 'VEND', 6500.00, NULL, '001'),
                              tp_nt_prod_compra(tp_produto('343','WHEY', 80, 100, 45,  to_date('2022-04-16','yyyy-mm-dd'), to_date('2025-04-16','yyyy-mm-dd'))),
                              TO_TIMESTAMP('2022-09-04 15:35','YYYY-MM-DD HH24:MI:SS'));