drop database if exists site_galeria;
create database site_galeria;
use site_galeria;
create table usuario (
  usuarioid int not null auto_increment,
  nome varchar(50) not null,
  email varchar(70) not null,
  senha varchar(50) not null,
  datanasc date not null,
  altura Double (8,2) not null,
  peso double (8,2) not null,
  primary key (usuarioid);
);
create table musculos (
  musculoid int not null auto_increment,
  musculonome varchar(50) not  null,
  descrição varchar(200) not null,
  primary key (musculoid);
);
create table exercicios (
  exercicioid int not null auto_increment,
  exercicionome varchar(50) not null,
  niveldificuldade varchar (20) not null,
  primary key (exercicioid);
);
create table exercicio_musculo (
  foreing key (musculosid) references musculos,
  foreing key (exercicioid) references exercicios;
);
create table artigo(
  artigoid int not null auto_increment,
  tituli_artigo varchar(50),
  artigo_conteudo varchar(500),
  artigo_datapublic date,
  artigo_autor varchar(50),
  primary key(artigoid);
  );
create table imc(
  imcid int not null auto_increment,
  foreing key (usuarioid) references usuario,
  calculo_resultado double(8,2) not null,
  calculo_data date not null,
  peso_na_data Double (8,2) not null,
  altura_na_data double (8,2) not null,
  classificação varchar(50) noy null,
  primary key(imcid);
);