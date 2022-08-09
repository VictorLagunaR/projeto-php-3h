create database formulario;
use formulario;

create table perguntas(
    
    cod_pergunta int not null primary key auto_increment,
    pergunta varchar(255) not null

);

create table pessoas(
    cod_pessoa int not null primary key auto_increment,
    nome varchar(40) not null
);

create table respostas(
    
    cod_pessoa int not null,
    cod_pergunta int not null,
    respostas boolean,

    constraint fk_respostas_perguntas foreign key (cod_pergunta)
    references perguntas (cod_pergunta),
    constraint fk_respostas_pessoa foreign key (cod_pessoa)
    references pessoas (cod_pessoa)

);

insert into perguntas values(null,"você gosta de banana?"),(null,"você gosta de maça?"),(null,"você gosta de abacaxi?");

insert into pessoas values (null, "Wesley"), (null, "Victor");

insert into respostas values (1,2,false),(2,2,true),(1,3,true),(2,3,true),(1,1,false),(2,1,true);

select * from respostas where cod_pessoa=1; 