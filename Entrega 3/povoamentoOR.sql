--PESSOA

INSERT INTO tb_pessoa VALUES('13418','Ana Luiza Porto','F',29,tp_endereco('26147',123,'apto 603'), tp_telefones(tp_telefone(NULL)));
INSERT INTO tb_pessoa VALUES('22548','Pedro Henrique Pires','M',21,tp_endereco('26157',144,'apto 402'), tp_telefones(tp_telefone(NULL)));
INSERT INTO tb_pessoa VALUES('57605','Leonardo Moraes','M',22,tp_endereco('26150',135,'apto 1301'), tp_telefones(tp_telefone(NULL)));
INSERT INTO tb_pessoa VALUES('13331','Arthur Pereira','M',27,tp_endereco('26145',98,'apto 504'), tp_telefones(tp_telefone(NULL)));
INSERT INTO tb_pessoa VALUES('42619','Benício Ramos','M',31,tp_endereco('50010',932,'apto 2102'), tp_telefones(tp_telefone(NULL)));
INSERT INTO tb_pessoa VALUES('98977','Laís Rocha','F',20,tp_endereco('50010',932,'apto 1602'), tp_telefones(tp_telefone(NULL)));
INSERT INTO tb_pessoa VALUES('12513','Raul Nascimento','M',40,tp_endereco('50010',966,'apto 701'), tp_telefones(tp_telefone(NULL)));
INSERT INTO tb_pessoa VALUES('31819','Nathan Peixoto','M',23,tp_endereco('50020',1200,'apto 301'), tp_telefones(tp_telefone(NULL)));
INSERT INTO tb_pessoa VALUES('32387','Alícia Sales','F',17,tp_endereco('50020',1216,'apto 102'), tp_telefones(tp_telefone(81989526545)));
INSERT INTO tb_pessoa VALUES('81783','Júlia Pires','F',25,tp_endereco('50020',1200,'apto 404'), tp_telefones(tp_telefone(81981491538)));
INSERT INTO tb_pessoa VALUES('39511','Breno da Rocha','M',28,tp_endereco('50020',1280,'apto 601'), tp_telefones(tp_telefone(81981263621)));
INSERT INTO tb_pessoa VALUES('00182','Thomas Alves','M',30,tp_endereco('52050',610,'apto 1802'), tp_telefones(tp_telefone(81997132626)));
INSERT INTO tb_pessoa VALUES('68703','Diego Silveira','M',19,tp_endereco('52050',606,'apto 2701'), tp_telefones(tp_telefone(81985930886)));
INSERT INTO tb_pessoa VALUES('69221','João Pedro Silveira','M',24,tp_endereco('52050',602,'apto 602'), tp_telefones(tp_telefone(81996977272)));
INSERT INTO tb_pessoa VALUES('48509','Caroline Monteiro','F',21,tp_endereco('52050',654,'apto 1503'), tp_telefones(tp_telefone(81989785264)));
INSERT INTO tb_pessoa VALUES('34581','Bruno Barros','M',32,tp_endereco('52050',595,'apto 202'), tp_telefones(tp_telefone(81994517784)));
INSERT INTO tb_pessoa VALUES('37515','Letícia Santos','F',27,tp_endereco('51030',222,'apto 301'), tp_telefones(tp_telefone(81970449495)));
INSERT INTO tb_pessoa VALUES('40942','Diego Aragão','M',36,tp_endereco('51030',242,'apto 801'), tp_telefones(tp_telefone(81984314731)));
INSERT INTO tb_pessoa VALUES('93818','Agatha Lima','F',24,tp_endereco('52030',450,'apto 101'), tp_telefones(tp_telefone(81988686426)));
INSERT INTO tb_pessoa VALUES('89670','Maria Cecília Pereira','F',28,tp_endereco('50030',312,'apto 2402'), tp_telefones(tp_telefone(81995405235)));
INSERT INTO tb_pessoa VALUES('73416','Luiz Fernando Pires','M',16,tp_endereco('51010',1462,'apto 902'), tp_telefones(tp_telefone(81973388446)));
INSERT INTO tb_pessoa VALUES('32966','Cecília Santos','F',23,tp_endereco('50020',1462,'apto 1101'), tp_telefones(tp_telefone(81991933671)));


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
INSERT INTO tb_funcionario VALUES (tp_funcionario('12513','Raul Nascimento','M',40,tp_endereco('50010',966,'apto 701'), tp_telefones(tp_telefone(NULL)),to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, NULL)); --NOS CASOS QUE O CARA É GERENTE DELE MESMO BOTA NULL
INSERT INTO tb_funcionario VALUES (tp_funcionario('42619','Benício Ramos','M',31, tp_endereco('50010',932,'apto 2102'), tp_telefones(tp_telefone(NULL)), to_date('2021-06-02','yyyy-mm-dd'), 'VEND', 3000.00,NULL));
INSERT INTO tb_funcionario VALUES (tp_funcionario('31819','Nathan Peixoto','M',23, tp_endereco('50020',1200,'apto 301'), tp_telefones(tp_telefone(NULL)),  to_date('2021-03-20','yyyy-mm-dd'), 'VEND', 2200.00,   (SELECT REF(F) FROM tb_funcionario F WHERE cpf = '12513')));  

--NUTRICIONISTA

INSERT INTO tb_nutricionista VALUES (tp_nutricionista('087', '12513', 'Raul Nascimento', 'M', 40, tp_endereco('50010', 966,'apto 701'), tp_telefones(tp_telefone(NULL)), to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 10000.00, NULL))

--VENDEDOR

--ATENDENTE

--PRODUTO

--FABRICANTE

--CONSULTA

--MARCAR CONSULTA

--COMPRA