--------------->USUARIO<-----------

--Seleciona todos os usuarios cadastrados
select * from usuario;

--Seleciona todos os dados de um usuario pela sua id 
select * from usuario where id_usuario = 502;

--Seleciona os dados 'email' e 'senha' de um usuario pela sua id
select email_usuario,senha from usuario where id_usuario = 502;

--Seleciona a senha do usuario pelo email
select senha from usuario where email_usuario = 'mateuscardoso3112@gmail.com';

--Seleciona os usuarios pelo tipo
select * from usuario where tipo_usuario = 3;

--Exclui um usuario
delete from usuario where id_usuario = /*id do usuario*/ ;

--Cria um novo usuario 															/*,imagem_perfil (a foto só sera inserida com as páginas prontas)*/		
insert into usuario(nome_usuario,sobrenome,email_usuario,data_nascimento,senha,tipo_usuario) values('Mateus','Cardoso','mateuscardoso3112@gmail.com','31/12/2001','cardoso31','3');

--atualiza algum dado de um usuario
update usuario set imagem_campus = 'NULL' where imagem_campus = 'no_file      '; ---ERRADO----


--------------->CAMPUS<-----------
	     
--Seleciona todos os campus cadastrados
select * from campus;

--Seleciona um campus pela sua id
select * from campus where id_campus = 

--exclui um campus pela id
delete from campus where id_campus = 4 ;

--cria um novo campus 										imagem_campus só sera inserida quando as páginas estiverem prontas
insert into campus(nome_campus,telefone_campus,email_campus,descricao_campus,endereco,universidade,site_campus) values('UMBRELA','(47) 4002-8922','umbrela.contato@outlook.com','O campus é bonito','2','2','umbrela.edu.com.br');	     

--Selecionar os campus que sao da mesma cidade
select * from campus where endereco in (select id_cidade from cidade where nome_cidade = 'Joinville');

--Selecionar os campus que são da mesma universidade
select * from campus where universidade in (select id_uni from universidade  where nome_universidade = 'IFC');

