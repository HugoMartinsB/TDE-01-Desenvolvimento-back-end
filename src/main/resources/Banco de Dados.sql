create database hospital;

use hospital;

create user "admin" identified by "1234";
grant all privileges on *.* to "admin" with grant option;

create table Consulta(
codigo_funcionario int primary key auto_increment,
nome_completo varchar(100) not null,
numero_rg varchar(12) not null,
orgao_emissor varchar(6) not null,
numero_cpf varchar(14) not null,
endereco varchar(50) not null,
numero varchar(15) not null,
complemento varchar(30),
bairro varchar(40) not null,
cidade varchar(40) not null,
estado varchar(2) not null,
telefone varchar(20) not null,
celular varchar(20),
numero_ctps varchar(20) not null,
numero_pis varchar(20) not null,
data_nascimento date not null
);



create table usuarios(
registro_usuario int primary key auto_increment,
indentificacao_usuario varchar(20) not null,
senha_acesso varchar(10) not null,
cadastro_funcionario varchar(1) not null,
cadastro_usuario varchar(1) not null,
cadastro_paciente varchar(1) not null,
cadastro_especialidade varchar(1) not null,
cadastro_medico varchar(1) not null,
cadastro_convenio varchar(1) not null,
agendamento_consulta varchar(1) not null,
cancelamento_consulta varchar(1) not null,
modulo_administrativo varchar(1) not null,
modulo_agendamento varchar(1) not null,
modulo_atendimento varchar(1) not null
);


create table medicos(
codigo_medico int primary key auto_increment,
nome_medico varchar(50) not null,
crm varchar(20) not null,
codigo_especialidade int not null,
);


create table pacientes(
codigo_paciente int primary key auto_increment,
nome varchar(50) not null,
numero_rg varchar(12) not null,
orgao_emissor varchar(6) not null,
numero_cpf varchar(14) not null,
endereco varchar(15) not null,
complemento varchar(30) not null,
bairro varchar(40) not null,
cidade varchar(40) not null,
estado varchar(2) not null,
telefone varchar(20) not null,
celular varchar(20) not null,
data_nascimento date not null,
sexo varchar(1) not null,
tem_convenio varchar(1) not null,
codigo_convenio int,
);


insert into usuarios values (null, "admin", "admin", "y", "y", "y", "y", "y", "y", "y", "y", "y", "y", "y" );
