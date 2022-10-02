-- CLIENTE
INSERT INTO tb_cliente VALUES ('12345', 'Pedro', 'M', 21, tp_endereco('12345', 12 ,'APT 02'), tp_telefones(tp_telefone('81-9 85464766')), 70, 175, 18, 'MESO', 'UNIMED');

--FUNCIONARIO
INSERT INTO tb_funcionario VALUES ('24689','Tobias','M', 20, tp_endereco('11111', 10, 'APT 301'), to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 9000.00, )
INSERT INTO tb_funcionario VALUES ('54321','Marcelo','M', 30, tp_endereco('22222', 20, 'APT 102'), to_date('2021-04-17','yyyy-mm-dd'), 'NUTRI', 4500.00, SELECT REF(F) FROM tb_funcionario F WHERE cpf = '24689')