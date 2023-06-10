create table Projeto (
 id SERIAL primary key,	
 nome VARCHAR (80),
 descrição VARCHAR (400),
 data_inicio DATE,
 data_prazo DATE
);


create table Tarefa(
 id SERIAL primary key,
 nome VARCHAR (80),
 descrição VARCHAR (400),
 data_inicio DATE,
 data_prazo DATE,
 concluida integer
 );

create table Categoria(
	id SERIAL primary key,
	nome VARCHAR (50),
	descricao VARCHAR (200)
);
