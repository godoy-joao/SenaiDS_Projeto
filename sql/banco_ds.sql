drop database banco_ds;
create database banco_ds;
use banco_ds;

create table usuario (
	idUsuario int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    senha varchar(100) not null,
    cpf char(14) not null,
    telefone varchar(15)
);

create table endereco (
	idEndereco int primary key auto_increment,
    estado varchar(50) not null,
    cidade varchar(50) not null,
    cep char(9),
    rua varchar(100) not null,
    numero varchar(10) not null,
    complemento varchar(100)
);

create table categoria (
	idCategoria int primary key auto_increment,
    nome varchar(100) not null
);

create table imagem ( 
idImagem int primary key auto_increment,
imagem longblob
);

create table produto (
	idProduto int primary key auto_increment,
    nome varchar(100) not null,
    valor float(10,2) not null,
    desconto float(10,2),
    valorFinal float(10,2) GENERATED ALWAYS AS (valor - COALESCE(desconto, 0)) STORED,
    categoria int not null,
    foreign key (categoria) references categoria(idCategoria)
);

create table produto_imagem (
	idProduto_imagem int primary key auto_increment,
    produto int not null,
    imagem int,
    foreign key (produto) references produto(idProduto),
    foreign key (imagem) references imagem(idImagem)
);

create table estoque (
	idEstoque int primary key auto_increment,
    produto int not null,
    quantidade int not null,
    custo float(10,2) not null,
    foreign key (produto) references produto(idProduto)
);

create table pedido (
	idPedido int primary key auto_increment,
    usuario int not null,
    endereco_entrega int not null,
    data_pedido date not null,
    valorTotal float,
    foreign key (endereco_entrega) references endereco(idEndereco),
    foreign key (usuario) references usuario(idUsuario)
);

create table carrinho (
	idCarrinho int primary key auto_increment,
    usuario int,
    foreign key (usuario) references usuario(idUsuario)
);

create table carrinho_produto (
	idCarrinho_produto int primary key auto_increment,
    carrinho int not null,
    produto int not null,
    foreign key (carrinho) references carrinho(idCarrinho),
    foreign key (produto) references produto(idProduto)
);

create table produto_pedido (
	idProduto_pedido int primary key auto_increment,
    pedido int not null,
    produto int not null,
    foreign key (pedido) references pedido(idPedido),
    foreign key (produto) references produto(idProduto)
);

DELIMITER //
CREATE TRIGGER criar_carrinho
AFTER INSERT ON usuario
FOR EACH ROW
BEGIN
    INSERT INTO carrinho (usuario) VALUES (NEW.idUsuario);
END //

DELIMITER ;
insert into categoria (nome) values ("Tecnologia");
insert into produto (nome, valor, desconto, categoria) values ("Mouse Gamer Redragon", 114.99, 0, 1);
insert into produto (nome, valor, desconto, categoria) values ("Teclado Gamer Redragon", 239.99, 39.99, 1);
insert into produto (nome, valor, desconto, categoria) values ("Luminária", 129.99, 59.99, 1);
select * from usuario;
select * from produto