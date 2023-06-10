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
 concluida BOOLEAN
 );

create table Categoria(
	id SERIAL primary key,
	nome VARCHAR (50),
	descricao VARCHAR (200)
);

ALTER TABLE Tarefa
ADD COLUMN categoria_id INT;

ALTER TABLE Tarefa
ADD COLUMN projeto_id INT;


ALTER TABLE Tarefa
ADD CONSTRAINT fk_categoria
FOREIGN KEY (categoria_id, projeto_id) REFERENCES Categoria(id), Projeto(id);

--Inserindo dados na tabela Projeto
INSERT into Projeto (nome, descrição, data_inicio, data_prazo)
values
('Projeto A', 'Descrição do Projeto A', '2023-01-01', '2023-02-28'),
('Projeto B', 'Descrição do Projeto B', '2023-03-01', '2023-04-30'),
('Projeto C', 'Descrição do Projeto C', '2023-05-01', '2023-06-30');

--Inserindo valores na tabela Categorias
insert into Categoria (id, nome, descricao)
values
(1, 'Tarefa pessoal', 'Tarefas relacionada a assuntos pessoais'),
(2, 'Tarefa profissional', 'Tarefas relacionadas ao trabalho'),
(3, 'Tarefa acadêmica', 'Tarefas relacionadas a estudos');


--Inserindo valores para a tabela Tarefas
insert into Tarefa(id, nome, descrição, projeto_id, categoria_id, data_inicio, data_prazo, concluida)
values
(1, 'Tarefa 1', 'Descrição da Tarefa 1', 1, 1, '2023-01-05', '2023-01-15', true),
(2, 'Tarefa 1', 'Descrição da Tarefa 2', 1, 2, '2023-01-10', '2023-01-20', false),
(3, 'Tarefa 3', 'Descrição da Tarefa 3', 2, 3, '2023-03-05', '2023-03-15', false),
(4, 'Tarefa 4', 'Descrição da Tarefa 4', 2, 1, '2023-03-10', '2023-03-20', false),
(5, 'Tarefa 5', 'Descrição da Tarefa 5', 3, 2, '2023-05-05', '2023-05-15', false);
