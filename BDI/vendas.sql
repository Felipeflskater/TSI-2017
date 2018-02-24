use vendas;

create table cep (
		cep int not null auto_increment primary key,
        nm_cidade varchar(50) not null,
        nm_rua varchar(50) not null
);
create table cliente (
		cd_cliente int not null auto_increment primary key,
        nm_cliente varchar(50) not null,
        cpf bigint not null unique,
        complemento varchar(50),
        nr_residencia int not null,
        cep int not null
);
create table telefone (
		cd_cliente int not null,
        nr_telefone varchar(50) not null
);