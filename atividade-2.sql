create table Projeto (
	id SERIAL primary key,
	nome VARCHAR (80),
	descricao VARCHAR (400),
	data_inicio DATE,
	data_prazo DATE
);


create table Tarefa(
	id SERIAL primary key,
	nome VARCHAR (80),
	descricao VARCHAR (400),
	data_inicio DATE,
	data_prazo DATE,
	concluida integer
);