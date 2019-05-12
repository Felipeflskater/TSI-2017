Create table cep(
cep char(8),
nm_rua varchar(50) not null,
nm_cidade varchar(50) not null,
primary key (cep));

Create table Clientes(
cd_cliente int,
nm_cliente varchar(30) not null,
nr_residencia varchar(6) not null,
complemento varchar(6),
sexo char(1),
cpf varchar (11) unique not null,
cep char(8),
primary key(cd_cliente),
foreign key (cep) references cep);


Create table Telefone(
nr_telefone char(8),
cd_cliente int not null,
primary key(nr_telefone,cd_cliente),
foreign key(cd_cliente) references Clientes);
Create table Vendedor(
cd_vendedor int,
nm_vendedor varchar(30) not null,
primary key(cd_vendedor)
);

Create table Produto(
cd_produto int,
nm_produto varchar(30) not null,
vl_unitario numeric(7,2) not null,
qtd_estoque int not null,
primary key (cd_produto));

Create table Pedido(
nr_pedido int,
dt_pedido date not null,
tot_pedido numeric(7,2) not null,
cd_cliente int,
cd_vendedor int,
Primary key (nr_pedido),
Foreign key (cd_cliente) references clientes,
Foreign key (cd_vendedor) references vendedor);

Create table Pedido_produto(
nr_pedido int,
cd_produto int,
tot_produto int not null,
qtd_pedida int not null,
Primary key (nr_pedido,cd_produto),
Foreign key (nr_pedido) references pedido,
Foreign key (cd_produto) references produto);