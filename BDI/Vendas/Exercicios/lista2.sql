--Lista 2
--EX1
  insert into telefone (nr_telefone,cd_cliente) values (91127584,(select cd_cliente from clientes where nm_cliente like '%Ana Clara%'))
--EX2
  select nm_cliente,nr_telefone from clientes,telefone where clientes.cd_cliente=telefone.cd_cliente order by nm_cliente desc 
--EX3
--EX4
-- EX5
  -- igual
     select nm_produto from produto p , clientes c, pedido pe,pedido_produto pp where c.cd_cliente=pe.cd_cliente and pe.nr_pedido=pp.nr_pedido and pp.cd_produto =  p.cd_produto and nm_cliente = 'Ana Clara Barroso'
  -- like
     select nm_produto from produto p , clientes c, pedido pe,pedido_produto pp where c.cd_cliente=pe.cd_cliente and pe.nr_pedido=pp.nr_pedido and pp.cd_produto =  p.cd_produto and nm_cliente like '%Ana Clara%'
  -- ilike (somente postgre)
     select nm_produto from produto p , clientes c, pedido pe,pedido_produto pp where c.cd_cliente=pe.cd_cliente and pe.nr_pedido=pp.nr_pedido and pp.cd_produto =  p.cd_produto and nm_cliente ilike '%Ana Clara Barroso%'
--EX9
  delete from telefone where cd_cliente in (select cd_cliente from clientes where nm_cliente ilike '%Ana%')
