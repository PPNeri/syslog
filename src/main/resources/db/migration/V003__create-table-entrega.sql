create table if not exists entrega (
id bigint auto_increment,
cliente_id bigint not null,
taxa decimal (10,2) not null,
status varchar(20) not null,
dt_pedido datetime not null,
dt_finalizacao datetime,
destinatario_nome varchar(60) not null,
destinatario_logradouro varchar(255) not null,
destinatario_numero varchar(30) not null,
destinatario_complemento varchar(60) not null,
destinatario_bairro varchar(30)not null,
destinatario_cep varchar(15) not null,
primary key (id),
foreign key (cliente_id) references cliente (id)
);