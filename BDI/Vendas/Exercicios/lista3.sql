--lista 3
 --EX1
	select v.nm_vendedor from vendedor v join pedido p on p.cd_vendedor=v.cd_vendedor where nr_pedido=1001
 --EX2
	select nr_pedido from vendedor v join pedido p on p.cd_vendedor=v.cd_vendedor where v.nm_vendedor like '%Batista%'
 --EX3
	select * from produto where nm_produto like 'Lápis'
	select * from produto where nm_produto like 'Lápis'
	update produto set vl_unitario=vl_unitario + (conta de porcentagem to compreguiça agora) where nm_produto like 'Lápis' and cd_produto=1
 --EX4
	select * from produto order by nm_produto asc
 --EX5
 