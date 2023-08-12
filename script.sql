CREATE DATABASE cadastro
DEFAULT CHARACTER set utf8
DEFAULT COLLATE utf8_general_ci; -- uft8: são caracteres acentuados no padrão

CREATE Table pessoas(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM("M", "F"),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT "Brasil",
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;

INSERT into pessoas VALUES      --usar para inserir linhas na tabela
('6','Messi', '1987-06-24', 'M', '72.0', '1.70','Argentina'),
('7','Neymar', '1992-02-05', 'M', '68.0', '1.75','Brasil');


alter Table pessoas
add COLUMN profissao VARCHAR(10);       --para adicionar uma coluna nova na tabela

alter Table pessoas
DROP COLUMN profissao;      --para apagar uma coluna nova na tabela

alter Table pessoas
add COLUMN profissao VARCHAR(10) after nome;      --para adicionar uma coluna nova na tabela depois de nome

alter Table pessoas
add COLUMN codigo int first;        --para adicionar uma nova coluna como primeira

update pessoas 
set profissao = ' ';

alter table pessoas
modify column profissao varchar(30) not null default '';        --para fazer uma alteração em uma coluna

alter Table pessoas
CHANGE COLUMN prof profissao VARCHAR(20) not null DEFAULT '';       --para renomear uma coluna

alter Table garfanhotos
RENAME to pessoas;      --para renomear uma tabela


CREATE Table if NOT exists cursos(          --so vai criar essas tabela se ela não exixtir
nome VARCHAR(100) not NULL UNIQUE,
descricao TEXT,
carga INT UNSIGNED,
totAulas INT UNSIGNED,
ano YEAR DEFAULT '2023'
) DEFAULT charset = utf8;

alter Table cursos
add COLUMN id int first;

alter table cursos
CHANGE COLUMN id idCurso INT;          --renomeando a coluna do ID

ALTER TABLE cursos
add PRIMARY KEY (idCurso);      --para transformar o idCurso em PK

INSERT INTO cursos VALUES       --inserindo dados errados na tabela cursos
('1','HTML4','Cursos de HTML5','40','37','2014'),
('2','Algoritimos','Lógica de programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à linguava Java','10','29','2000'),
('6','MySQL','Banco de Dados MYSQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Dança Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmicas e ganhar inscritos','5','2','2018');

UPDATE cursos           --corrigindo os erros
set nome = 'HTML5'
WHERE idCurso = '4';

UPDATE cursos           --corrigindo os erros
set nome = 'PHP', ano = '2015'
WHERE idCurso = '4';

UPDA TE cursos           --corrigindo os erros
set nome = 'Java', carga = '40', ano = '2015'
WHERE idCurso = '5'
LIMIT 1;


CREATE TABLE if not exists teste(       --criando uma tabela para apagar
    id int,
    nome varchar(10),
    idade INT
);

INSERT INTO teste VALUE             -- colocando dados na tabela
('1', 'Jorge', '19'),
('2', 'Ari', '50'),
('3', 'Monica', '46');

SELECT * from teste;

DROP table teste;      --apagando a tabela 
