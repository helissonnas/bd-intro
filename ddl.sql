create table tb_cliente (
	codigo serial primary key,
	nome varchar(200)
);

create table tb_acao (
	codigo varchar(6) primary key,
	icone varchar(200) not null,
	nome varchar(100) not null
);

create table tb_cotacao_acao (
	codigo serial primary key, 
	acao_cod varchar(6) not null,
	preco numeric(2,2) not null,
	data_registro timestamp not null,
	FOREIGN KEY (acao_cod)
      REFERENCES tb_acao (codigo)
);

create table tb_cliente_tem_acao (
	acao_cod int not null,
	cli_cod int not null,
	quantidade int not null default 0,
	FOREIGN KEY (acao_cod)
		  REFERENCES tb_cotacao_acao (codigo),
	FOREIGN KEY (acao_cod)
		  REFERENCES tb_cliente (codigo)
);

commit;