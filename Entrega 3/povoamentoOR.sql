--PESSOA ♥

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


-- CLIENTE ♥

INSERT INTO tb_cliente VALUES ('32387', 'Alícia Sales', 'F', 17, tp_endereco('50020', 1216 , 'apto 102'), tp_telefones(tp_telefone('81989526545')), 58, 164, 28, 'ENDO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('81783', 'Júlia Pires', 'F', 25, tp_endereco('50020', 1200 ,'apto 404'), tp_telefones(tp_telefone('81981491538')), 44, 168, 17, 'ECTO', 'FISCO');
INSERT INTO tb_cliente VALUES ('39511', 'Breno da Rocha', 'M', 28, tp_endereco('50020', 1280 ,'apto 601'), tp_telefones(tp_telefone('81981263621')), 82, 177, 13, 'MESO', 'SULAMERICA');
INSERT INTO tb_cliente VALUES ('00182', 'Thomas Alves', 'M', 30, tp_endereco('52050', 610 ,'apto 1802'), tp_telefones(tp_telefone('81997132626')), 94, 184, 19, 'ENDO', 'AMIL');
INSERT INTO tb_cliente VALUES ('68703', 'Diego Silveira', 'M', 19, tp_endereco('52050', 606,'apto 2701'), tp_telefones(tp_telefone('81985930886')), 64, 182, 14, 'ECTO', 'HAPVIDA');
INSERT INTO tb_cliente VALUES ('69221', 'João Pedro Silveira', 'M', 24, tp_endereco('52050', 602, 'apto 602'), tp_telefones(tp_telefone('81996977272')), 88, 174, 22, 'ENDO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('48509', 'Caroline Monteiro', 'F', 21, tp_endereco('52050', 654, 'apto 1503' ), tp_telefones(tp_telefone('81991933671')), 76, 175, 18, 'MESO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('34581', 'Bruno Barros', 'M', 32, tp_endereco('52050', 595, 'apto 202'), tp_telefones(tp_telefone('81973388446')), 71, 173, 18, 'ENDO', 'HAPVIDA');
INSERT INTO tb_cliente VALUES ('37515', 'Letícia Santos', 'F', 27, tp_endereco('51030', 222, 'apto 301'), tp_telefones(tp_telefone('81989785264')), 68, 166, 14, 'MESO', 'FUSEX');
INSERT INTO tb_cliente VALUES ('40942','Diego Aragão','M',36, tp_endereco('51030',242,'apto 801'), tp_telefones(tp_telefone('81994517784')), 96, 185, 7, 'MESO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('93818','Agatha Lima','F',24,tp_endereco('52030',450,'apto 101'), tp_telefones(tp_telefone('81970449495')), 60, 155, 24, 'ECTO', 'UNIMED');
INSERT INTO tb_cliente VALUES ('89670','Maria Cecília Pereira','F',28, tp_endereco('50030',312,'apto 2402'), tp_telefones(tp_telefone('81984314731')), 65, 160, 24, 'MESO', 'AMIL');
INSERT INTO tb_cliente VALUES ('73416','Luiz Fernando Pires','M',16, tp_endereco('51010',1462,'apto 902'), tp_telefones(tp_telefone('81988686426')), 58, 164, 28, 'ECTO', 'SULAMERICA');
INSERT INTO tb_cliente VALUES ('32966','Cecília Santos','F',23, tp_endereco('50020',1462,'apto 1101'), tp_telefones(tp_telefone('81995405235')), 74, 162, 32, 'ENDO', 'HAPVIDA');


--FUNCIONARIO ♥
INSERT INTO tb_funcionario VALUES (tp_funcionario('12513','Raul Nascimento','M',40,tp_endereco('50010',966,'apto 701'),to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, NULL)); 
INSERT INTO tb_funcionario VALUES (tp_funcionario('13331','Arthur Pereira','M',27, tp_endereco('26145',98,'apto 504'), to_date('2022-01-22', 'yyyy-mm-dd'), 'NUTRI', 6400.00, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513')));
INSERT INTO tb_funcionario VALUES (tp_funcionario('57605','Leonardo Moraes','M',22, tp_endereco('26150',135,'apto 1301'), to_date('2022-01-22','yyyy-mm-dd'), 'NUTRI', 6400.03, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513')));
INSERT INTO tb_funcionario VALUES (tp_funcionario('13418','Ana Luiza Porto','F',29,tp_endereco('26147',123,'apto 603'), to_date('2022-04-17','yyyy-mm-dd'), 'NUTRI', 6500.00, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513')));
INSERT INTO tb_funcionario VALUES (tp_funcionario('31819','Nathan Peixoto','M',31, tp_endereco('50020', 1200,'apto 301'),  to_date('2021-03-20','yyyy-mm-dd'), 'VEND', 6500.00, NULL));
INSERT INTO tb_funcionario VALUES (tp_funcionario('42619','Benício Ramos','M',23, tp_endereco('50010', 932,'apto 2102'),  to_date('2021-06-02','yyyy-mm-dd'), 'VEND', 3000.00, (SELECT REF(V) FROM tb_vendedor V WHERE cpf = '31819')));
INSERT INTO tb_funcionario VALUES (tp_funcionario('22548','Pedro Henrique Pires','M',21,tp_endereco('26157',144,'apto 402'), to_date('2022-11-07', 'yyyy-mm-dd'), 'ATEND', 2000.00, NULL));
INSERT INTO tb_funcionario VALUES (tp_funcionario('98977','Laís Rocha','F',20,tp_endereco('50010',932,'apto 1602'), to_date('2021-03-30','yyyy-mm-dd'), 'ATEND', 1800.00, (SELECT REF(F) FROM tb_atendente F WHERE cpf = '22548')));

--NUTRICIONISTA ♥

INSERT INTO tb_nutricionista VALUES (tp_nutricionista('12513', 'Raul Nascimento', 'M', 40, tp_endereco('50010', 966,'apto 701'), to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, NULL, '087'));
INSERT INTO tb_nutricionista VALUES (tp_nutricionista('13331','Arthur Pereira','M',27, tp_endereco('26145',98,'apto 504'), to_date('2022-01-22', 'yyyy-mm-dd'), 'NUTRI', 6400.00, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513'), '870'));
INSERT INTO tb_nutricionista VALUES (tp_nutricionista('57605','Leonardo Moraes','M',22, tp_endereco('26150',135,'apto 1301'), to_date('2022-01-22','yyyy-mm-dd'), 'NUTRI', 6400.03, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513'), '404'));
INSERT INTO tb_nutricionista VALUES (tp_nutricionista('13418','Ana Luiza Porto','F',29,tp_endereco('26147',123,'apto 603'), to_date('2022-04-17','yyyy-mm-dd'), 'NUTRI', 6500.00, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513'), '101'));

--VENDEDOR ♥

INSERT INTO tb_vendedor VALUES (tp_vendedor('31819','Nathan Peixoto','M',23, tp_endereco('50020', 1200,'apto 301'),  to_date('2021-03-20','yyyy-mm-dd'), 'VEND', 6500.00, NULL, '001'));
INSERT INTO tb_vendedor VALUES (tp_vendedor('42619','Benício Ramos','M',31, tp_endereco('50010', 932,'apto 2102'),  to_date('2021-06-02','yyyy-mm-dd'), 'VEND', 3000.00, (SELECT REF(V) FROM tb_vendedor V WHERE cpf = '31819'), '010'));

--ATENDENTE ♥
INSERT INTO tb_atendente VALUES (tp_atendente('22548','Pedro Henrique Pires','M',21,tp_endereco('26157',144,'apto 402'), to_date('2022-11-07', 'yyyy-mm-dd'), 'ATEND', 2000.00, NULL, '022'));
INSERT INTO tb_atendente VALUES (tp_atendente('98977','Laís Rocha','F',20,tp_endereco('50010',932,'apto 1602'), to_date('2021-03-30','yyyy-mm-dd'), 'ATEND', 1800.00, (SELECT REF(F) FROM tb_atendente F WHERE cpf = '22548'), '012'));

--PRODUTO
--TROCAR O PRIMEIRO CODIGO POR UM VALOR ALEATORIO DE 3 DIGITOS (NAO PODEM SER REPETIDOS)
INSERT INTO tb_produto VALUES (tp_produto('343','WHEY', 80, 100, 45,  to_date('2022-04-16','yyyy-mm-dd'), to_date('2025-04-16','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('344','CREATINA', 100, 125, 10, to_date('2021-01-1','yyyy-mm-dd'), to_date('2022-01-01','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('345','ALBUMINA', 60, 85, 00, to_date('2021-05-11','yyyy-mm-dd'), to_date('2024-05-11','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('346','CAFEINA', 20, 40, 32, to_date('2021-08-07','yyyy-mm-dd'), to_date('2023-08-07','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('785','WHEY', 100, 120, 75, to_date('2021-06-07','yyyy-mm-dd'), to_date('2023-06-07','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('786','CREATINA', 105, 130, 00, to_date('2020-09-30','yyyy-mm-dd'), to_date('2022-09-30','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('787','ALBUMINA', 55, 70, 85, to_date('2022-06-27','yyyy-mm-dd'), to_date('2024-06-27','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('788','CAFEINA', 25, 35, 55, to_date('2021-09-04','yyyy-mm-dd'), to_date('2024-09-04','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('145','WHEY', 75, 90, 22, to_date('2021-03-04','yyyy-mm-dd'), to_date('2023-03-04','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('146','CREATINA', 80, 100, 17, to_date('2021-06-07','yyyy-mm-dd'), to_date('2024-06-07','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('147','ALBUMINA', 50, 65, 71, to_date('2022-06-13','yyyy-mm-dd'), to_date('2024-04-17','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('148','CAFEINA', 22, 35, 14, to_date('2022-01-30','yyyy-mm-dd'), to_date('2025-01-30','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('259','WHEY', 99, 125, 12, to_date('2022-03-17','yyyy-mm-dd'), to_date('2025-03-17','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('260','CREATINA', 75, 105, 100, to_date('2021-06-17','yyyy-mm-dd'), to_date('2024-06-17','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('261','ALBUMINA', 55, 70, 50, to_date('2022-01-22','yyyy-mm-dd'), to_date('2024-01-22','yyyy-mm-dd')));
INSERT INTO tb_produto VALUES (tp_produto('262','CAFEINA', 15, 30, 65, to_date('2022-08-30','yyyy-mm-dd'), to_date('2025-08-30','yyyy-mm-dd')));

--FABRICANTE

INSERT INTO tb_fabricante VALUES ('34346','MAX', tp_nt_fornece(tp_produto('343','WHEY', 80, 100, 45,  to_date('2022-04-16','yyyy-mm-dd'), to_date('2025-04-16','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('34346','MAX', tp_nt_fornece(tp_produto('344','CREATINA', 100, 125, 10, to_date('2021-01-1','yyyy-mm-dd'), to_date('2022-01-01','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('34346','MAX', tp_nt_fornece(tp_produto('345','ALBUMINA', 60, 85, 00, to_date('2021-05-11','yyyy-mm-dd'), to_date('2024-05-11','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('34346','MAX', tp_nt_fornece(tp_produto('346','CAFEINA', 20, 40, 32, to_date('2021-08-07','yyyy-mm-dd'), to_date('2023-08-07','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('78549','INTEGRAL', tp_nt_fornece(tp_produto('785','WHEY', 100, 120, 75, to_date('2021-06-07','yyyy-mm-dd'), to_date('2023-06-07','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('78549','INTEGRAL',tp_nt_fornece(tp_produto('786','CREATINA', 105, 130, 00, to_date('2020-09-30','yyyy-mm-dd'), to_date('2022-09-30','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('78549','INTEGRAL', tp_nt_fornece(tp_produto('787','ALBUMINA', 55, 70, 85, to_date('2022-06-27','yyyy-mm-dd'), to_date('2024-06-27','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('78549','INTEGRAL', tp_nt_fornece(tp_produto('788','CAFEINA', 25, 35, 55, to_date('2021-09-04','yyyy-mm-dd'), to_date('2024-09-04','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('14548','GROWTH', (tp_produto('145','WHEY', 75, 90, 22, to_date('2021-03-04','yyyy-mm-dd'), to_date('2023-03-04','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('14548','GROWTH', (tp_produto('146','CREATINA', 80, 100, 17, to_date('2021-06-07','yyyy-mm-dd'), to_date('2024-06-07','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('14548','GROWTH', (tp_produto('147','ALBUMINA', 50, 65, 71, to_date('2022-06-13','yyyy-mm-dd'), to_date('2024-04-17','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('14548','GROWTH', (tp_produto('148','CAFEINA', 22, 35, 14, to_date('2022-01-30','yyyy-mm-dd'), to_date('2025-01-30','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('25975','PROBIOTICA',(tp_produto('259','WHEY', 99, 125, 12, to_date('2022-03-17','yyyy-mm-dd'), to_date('2025-03-17','yyyy-mm-dd'))));
INSERT INTO tb_fabricante VALUES ('25975','PROBIOTICA',(tp_produto('260','CREATINA', 75, 105, 100, to_date('2021-06-17','yyyy-mm-dd'), to_date('2024-06-17','yyyy-mm-dd')))); 
INSERT INTO tb_fabricante VALUES ('25975','PROBIOTICA',(tp_produto('261','ALBUMINA', 55, 70, 50, to_date('2022-01-22','yyyy-mm-dd'), to_date('2024-01-22','yyyy-mm-dd')))); 
INSERT INTO tb_fabricante VALUES ('25975','PROBIOTICA',(tp_produto('262','CAFEINA', 15, 30, 65, to_date('2022-08-30','yyyy-mm-dd'), to_date('2025-08-30','yyyy-mm-dd')))); 

--CONSULTA

INSERT INTO tb_consulta VALUES (tp_cliente('32387', 'Alícia Sales', 'F', 17, tp_endereco('50020', 1216 , 'apto 102'), tp_telefones(tp_telefone('81989526545')), 58, 164, 28, 'ENDO', 'UNIMED'), 
                                tp_nutricionista('12513', 'Raul Nascimento', 'M', 40, tp_endereco('50010', 966,'apto 701'), to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, NULL, '087'),
                                tp_nt_prescreve(tp_produto('343','WHEY', 80, 100, 45,  to_date('2022-04-16','yyyy-mm-dd'), to_date('2025-04-16','yyyy-mm-dd'))),
                                TO_TIMESTAMP('2022-09-04 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO tb_consulta VALUES (tp_cliente('39511', 'Breno da Rocha', 'M', 28, tp_endereco('50020', 1280 ,'apto 601'), tp_telefones(tp_telefone('81981263621')), 82, 177, 13, 'MESO', 'SULAMERICA'), 
                                tp_nutricionista('13331','Arthur Pereira','M',27, tp_endereco('26145',98,'apto 504'), to_date('2022-01-22', 'yyyy-mm-dd'), 'NUTRI', 6400.00, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513'), '870'),
                                tp_nt_prescreve(tp_produto('786','CREATINA', 105, 130, 00, to_date('2020-09-30','yyyy-mm-dd'), to_date('2022-09-30','yyyy-mm-dd'))),
                                TO_TIMESTAMP('2022-09-04 15:30','YYYY-MM-DD HH24:MI:SS'));                              
INSERT INTO tb_consulta VALUES (tp_cliente('68703', 'Diego Silveira', 'M', 19, tp_endereco('52050', 606,'apto 2701'), tp_telefones(tp_telefone('81985930886')), 64, 182, 14, 'ECTO', 'HAPVIDA'), 
                                tp_nutricionista('57605','Leonardo Moraes','M',22, tp_endereco('26150',135,'apto 1301'), to_date('2022-01-22','yyyy-mm-dd'), 'NUTRI', 6400.03, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513'), '404'),
                                tp_nt_prescreve(tp_produto('147','ALBUMINA', 50, 65, 71, to_date('2022-06-13','yyyy-mm-dd'), to_date('2024-04-17','yyyy-mm-dd'))),
                                TO_TIMESTAMP('2022-09-04 8:30','YYYY-MM-DD HH24:MI:SS'));                               
INSERT INTO tb_consulta VALUES (tp_cliente('93818','Agatha Lima','F',24,tp_endereco('52030',450,'apto 101'), tp_telefones(tp_telefone('81970449495')), 60, 155, 24, 'ECTO', 'UNIMED'), 
                                tp_nutricionista('13418','Ana Luiza Porto','F',29,tp_endereco('26147',123,'apto 603'), to_date('2022-04-17','yyyy-mm-dd'), 'NUTRI', 6500.00, (SELECT REF(N) FROM tb_nutricionista N WHERE cpf = '12513'), '101'),
                                tp_nt_prescreve(tp_produto('147','ALBUMINA', 50, 65, 71, to_date('2022-06-13','yyyy-mm-dd'), to_date('2024-04-17','yyyy-mm-dd'))),
                                TO_TIMESTAMP('2022-09-04 8:30','YYYY-MM-DD HH24:MI:SS'));  
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