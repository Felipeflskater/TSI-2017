select length(nome) from clientes where nome ilike '%%'
select * from clientes
select 'Insert into clientes (codcliente, nome, endereco, tipo_cliente, rg, cpf, cnpj, obs) values
('||codcliente||', '''||nome||''', '''||endereco||''', '''||tipo_cliente||''');' 
 from clientes

select concat (extract(month from current_date),' / ',extract(day from current_date))
select date_part('month',current_date)
select date_part('day',current_date)
select age (timestamp '28/02/1995')

select 'nome:' as descricao,'felipe prestes aranalde' as eu 
union all
select 'idade:' as descricao,concat (extract (year from (select age (timestamp '28/02/1995')))) as eu
union all
select 'Mes:' as descricao ,concat (extract (month from (select age (timestamp '28/02/1995')))) as eu
union all
select 'Dia:' as descricao ,concat (extract (day from (select age (timestamp '28/02/1995')))) as eu
union all
select 'to char data:' as descricao,to_char (current_date,'DD,MM,YYYY') as eu
union all
select 'Data monstra:' as descricao,to_char (current_date + 99999999   ,'DD,MM,YYYY') as eu
union all
select 'Data monstra:' as descricao,to_char (current_date + 99999999   ,'TMday "de" TMmont "de" TMyyyy') as eu
