--EX1
    alter table clientes alter column nm_cliente type varchar(40);
--EX2
    alter table clientes add column profissao varchar (25);
--EX3
    alter table clientes alter column profissao set default 'indefinida';
--EX4
    select * from clientes;
--EX5
    select * from clientes where cd_cliente=10;
--EX6
    alter table clientes rename  column profissao to profissao_cliente;
--EX7
    select distinct nm_cidade from cep where cep in (select cep from clientes);
  --ou
    select distinct cep.nm_cidade from clientes,cep where clientes.cep = cep.cep;
--EX8
    select distinct profissao_cliente from clientes;
--EX9
    drop table clientes;
--EX10
    alter table clientes drop column profissao
--EX11
    insert into produto (cd_produto,nm_produto,vl_unitario,qtd_produto) values(10,'agenda',8.50,30);
--EX12
    select * from produto where vl_unitario < 10
--EX13
    select * from produto where vl_unitario between 5 and 10
--EX14
--EX15
    select nm_produto,vl_unitario from produto
--EX16
    update produto set vl_unitario=vl_unitario+(vl_unitario*10/100) where cd_produto=3
--EX17


ALTER TABLE public.produto RENAME qtd_estoque  TO qtd_produto;
alter table vendedor add column salario numeric;