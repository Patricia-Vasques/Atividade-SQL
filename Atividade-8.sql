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

ALTER TABLE Tarefa
ADD COLUMN categoria_id INT;

ALTER TABLE Tarefa
ADD CONSTRAINT fk_categoria
FOREIGN KEY (categoria_id) REFERENCES Categoria(id);