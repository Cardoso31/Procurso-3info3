-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.


CREATE TABLE curso (
descricao_curso varchar(300),
carga_horaria varchar(30),
numero_vagas int,
forma_ingresso int,
id_curso int PRIMARY KEY,
turno int,
nome_curso varchar(80),
modalidade int
);

CREATE TABLE favoritar (
usuario int,
curso int,
id_favorito int PRIMARY KEY,
FOREIGN KEY(curso) REFERENCES curso (id_curso)
);

CREATE TABLE usuario (
email_usuario varchar(80),
nome_usuario varchar(80),
data_nascimento date,
sobrenome varchar(30),
senha varchar(25),
id_usuario int PRIMARY KEY,
tipo_usuario int,
imagem_perfil blob
);

CREATE TABLE campus (
id_campus int PRIMARY KEY,
telefone_campus varchar(13),
email_campus varchar(80),
descricao_campus varchar(300),
nome_campus varchar(80),
imagem_campus blob,
endereco int,
universidade int,
site_campus varchar(100)
);

CREATE TABLE cidade (
id_cidade int PRIMARY KEY,
nome_cidade varchar(80)
);

CREATE TABLE comentario (
usuario int,
curso int,
id_comentario int PRIMARY KEY,
comentario_descricao varchar(200),
data_hora date,
FOREIGN KEY(usuario) REFERENCES usuario (id_usuario),
FOREIGN KEY(curso) REFERENCES curso (id_curso)
);

CREATE TABLE universidade (
id_uni int PRIMARY KEY,
imagem_uni blob,
descricao_universidade varchar(300),
email varchar(80),
nome_universidade varchar(80),
telefone_universidade varchar(13),
site_universidade varchar(100)
);

CREATE TABLE cursos_campus (
curso int,
campus int,
FOREIGN KEY(curso) REFERENCES curso (id_curso),
FOREIGN KEY(campus) REFERENCES campus (id_campus)
);

CREATE TABLE endereco (
id_end int PRIMARY KEY,
logradoruo varchar(120),
cep varchar(15 ),
numero int,
bairro varchar(80),
complemento varchar(80),
cidade int,
FOREIGN KEY(cidade) REFERENCES cidade (id_cidade)
);

ALTER TABLE favoritar ADD FOREIGN KEY(usuario) REFERENCES usuario (id_usuario);
ALTER TABLE campus ADD FOREIGN KEY(endereco) REFERENCES id_cidade (id_end);
ALTER TABLE campus ADD FOREIGN KEY(universidade) REFERENCES universidade (id_uni);
