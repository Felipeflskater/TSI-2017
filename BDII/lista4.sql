--Ex 1
select distinct age(dt_venda) from vendas where codfunc in (select codfunc from funcionarios where nome ilike '%Mariana Costa%') 
and dt_venda in (select max(dt_venda) from vendas where 
codfunc in (select codfunc from funcionarios where nome like '%Mariana Costa%'))
--EX 2
select  valor * 1.5,codigo from itens where codigo in (2,3)
--EX 3
select current_date
--EX 4
select to_char (current_date, 'DD/MM/YY')
--EX 5
select distinct to_char(dt_venda,'TMmonth') from vendas where extract (year from dt_venda)=2017 and codfunc in (select codfunc from funcionarios where nome like '%Cristian Tavares%')
--EX 6



select ':D--|-<'


