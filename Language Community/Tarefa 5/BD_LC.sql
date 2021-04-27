/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     4/27/2021 2:37:37 PM                         */
/*==============================================================*/


drop table if exists ALUNO;

drop table if exists ALUNO_IDIOMA;

drop table if exists GENERO;

drop table if exists IDIOMA;

drop table if exists IDIOMA_CONHECIMENTO;

drop table if exists INTERESSES;

drop table if exists INTERESSE_USUARIO;

drop table if exists LOCALIZACAO;

drop table if exists MENSAGEM;

drop table if exists NIVEL_CONHECIMENTO;

drop table if exists PERFIL_USUARIO;

drop table if exists PROFESSOR;

drop table if exists PROFESSOR_IDIOMA;

drop table if exists PUBLICACAO_FORUM;

/*==============================================================*/
/* Table: ALUNO                                                 */
/*==============================================================*/
create table ALUNO
(
   COD_ALUNO            int not null,
   IND_PREMIUM          boolean,
   COD_CADASTRO         int not null
);

alter table ALUNO
   add primary key (COD_ALUNO);

/*==============================================================*/
/* Table: ALUNO_IDIOMA                                          */
/*==============================================================*/
create table ALUNO_IDIOMA
(
   COD_ALUNO_IDIOMA     int not null,
   COD_ALUNO            int not null,
   COD_IDIOMA           int not null
);

alter table ALUNO_IDIOMA
   add primary key (COD_ALUNO_IDIOMA);

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO
(
   COD_GENERO           int not null,
   IND_GENERO           varchar(40)
);

alter table GENERO
   add primary key (COD_GENERO);

/*==============================================================*/
/* Table: IDIOMA                                                */
/*==============================================================*/
create table IDIOMA
(
   COD_IDIOMA           int not null,
   DES_IDIOMA           varchar(30)
);

alter table IDIOMA
   add primary key (COD_IDIOMA);

/*==============================================================*/
/* Table: IDIOMA_CONHECIMENTO                                   */
/*==============================================================*/
create table IDIOMA_CONHECIMENTO
(
   COD_IDIOMA_CONHECIMENTO tinyint not null,
   COD_IDIOMA           int not null,
   COD_NIVEL_IDIOMA     int not null
);

alter table IDIOMA_CONHECIMENTO
   add primary key (COD_IDIOMA_CONHECIMENTO);

/*==============================================================*/
/* Table: INTERESSES                                            */
/*==============================================================*/
create table INTERESSES
(
   COD_INTERESSE        smallint not null,
   DES_INTERESSE        varchar(50)
);

alter table INTERESSES
   add primary key (COD_INTERESSE);

/*==============================================================*/
/* Table: INTERESSE_USUARIO                                     */
/*==============================================================*/
create table INTERESSE_USUARIO
(
   COD_INTERESSE_USUARIO int not null,
   COD_INTERESSE        smallint not null,
   COD_CADASTRO         int not null
);

alter table INTERESSE_USUARIO
   add primary key (COD_INTERESSE_USUARIO);

/*==============================================================*/
/* Table: LOCALIZACAO                                           */
/*==============================================================*/
create table LOCALIZACAO
(
   COD_LOCALIZACAO      int not null,
   DES_CIDADE           varchar(50),
   NUM_CEP              int
);

alter table LOCALIZACAO
   add primary key (COD_LOCALIZACAO);

/*==============================================================*/
/* Table: MENSAGEM                                              */
/*==============================================================*/
create table MENSAGEM
(
   COD_MENSAGEM         int not null,
   DES_DESTINATARIO     varchar(50),
   DTA_MSG              date,
   HOR_MSG              time,
   COD_CADASTRO_USUARIO int not null
);

alter table MENSAGEM
   add primary key (COD_MENSAGEM);

/*==============================================================*/
/* Table: NIVEL_CONHECIMENTO                                    */
/*==============================================================*/
create table NIVEL_CONHECIMENTO
(
   COD_NIVEL_IDIOMA     int not null,
   DES_NIVEL            varchar(50)
);

alter table NIVEL_CONHECIMENTO
   add primary key (COD_NIVEL_IDIOMA);

/*==============================================================*/
/* Table: PERFIL_USUARIO                                        */
/*==============================================================*/
create table PERFIL_USUARIO
(
   COD_PERFIL           int not null,
   COD_GENERO           int,
   COD_LOCALIZACAO      int,
   NOM_USUARIO          varchar(50),
   DES_EMAIL            varchar(70),
   DES_SENHA            varchar(20),
   DES_PERFIL           varchar(300),
   ARQ_FOTO_PERFIL      blob,
   DTA_NASCIMENTO       date
);

alter table PERFIL_USUARIO
   add primary key (COD_PERFIL);

/*==============================================================*/
/* Table: PROFESSOR                                             */
/*==============================================================*/
create table PROFESSOR
(
   COD_PROFESSOR        int not null,
   ARQ_CERTIFICADO      mediumblob,
   COD_CADASTRO         int not null
);

alter table PROFESSOR
   add primary key (COD_PROFESSOR);

/*==============================================================*/
/* Table: PROFESSOR_IDIOMA                                      */
/*==============================================================*/
create table PROFESSOR_IDIOMA
(
   COD_PROFESSOR_IDIOMA int not null,
   COD_IDIOMA           int not null,
   COD_PROFESSOR        int not null
);

alter table PROFESSOR_IDIOMA
   add primary key (COD_PROFESSOR_IDIOMA);

/*==============================================================*/
/* Table: PUBLICACAO_FORUM                                      */
/*==============================================================*/
create table PUBLICACAO_FORUM
(
   COD_PUBLICACAO       int not null,
   DES_TITULO           varchar(50),
   DES_PUBLICACAO       varchar(1000),
   ARQ_ANEXO            mediumblob,
   DTA_PUBLICACAO       date,
   HOR_PUBLICACAO       time,
   COD_CADASTRO_USUARIO int not null
);

alter table PUBLICACAO_FORUM
   add primary key (COD_PUBLICACAO);

alter table ALUNO add constraint FK_USUARIO_ALUNO foreign key (COD_CADASTRO)
      references PERFIL_USUARIO (COD_PERFIL) on delete restrict on update restrict;

alter table ALUNO_IDIOMA add constraint FK_ALUNO_ALUNO_IDIOMA foreign key (COD_ALUNO)
      references ALUNO (COD_ALUNO) on delete restrict on update restrict;

alter table ALUNO_IDIOMA add constraint FK_IDIOMA_ALUNO_IDIOMA foreign key (COD_IDIOMA)
      references IDIOMA (COD_IDIOMA) on delete restrict on update restrict;

alter table IDIOMA_CONHECIMENTO add constraint FK_IDIOMA_IDIOMA_CONHECIMENTO foreign key (COD_IDIOMA)
      references IDIOMA (COD_IDIOMA) on delete restrict on update restrict;

alter table IDIOMA_CONHECIMENTO add constraint FK_NIVEL_CONHECIMENTO_IDIOMA_CONHECIMENTO foreign key (COD_NIVEL_IDIOMA)
      references NIVEL_CONHECIMENTO (COD_NIVEL_IDIOMA) on delete restrict on update restrict;

alter table INTERESSE_USUARIO add constraint FK_INTERESSE_INTERESSE_USUARIO foreign key (COD_INTERESSE)
      references INTERESSES (COD_INTERESSE) on delete restrict on update restrict;

alter table INTERESSE_USUARIO add constraint FK_USUARIO_INTERESSE_USUARIO foreign key (COD_CADASTRO)
      references PERFIL_USUARIO (COD_PERFIL) on delete restrict on update restrict;

alter table MENSAGEM add constraint FK_USUARIO_MENSAGEM foreign key (COD_CADASTRO_USUARIO)
      references PERFIL_USUARIO (COD_PERFIL) on delete restrict on update restrict;

alter table PERFIL_USUARIO add constraint FK_LOCALIZACAO_PERFIL_USUARIO foreign key (COD_LOCALIZACAO)
      references LOCALIZACAO (COD_LOCALIZACAO) on delete restrict on update restrict;

alter table PERFIL_USUARIO add constraint FK_GENERO_PERFIL_USUARIO foreign key (COD_GENERO)
      references GENERO (COD_GENERO) on delete restrict on update restrict;

alter table PROFESSOR add constraint FK_USUARIO_PROFESSOR foreign key (COD_CADASTRO)
      references PERFIL_USUARIO (COD_PERFIL) on delete restrict on update restrict;

alter table PROFESSOR_IDIOMA add constraint FK_IDIOMA_PERFIL_PROFESSOR_IDIOMA foreign key (COD_IDIOMA)
      references IDIOMA (COD_IDIOMA) on delete restrict on update restrict;

alter table PROFESSOR_IDIOMA add constraint FK_PROFESSOR_PROFESSOR_IDIOMA foreign key (COD_PROFESSOR)
      references PROFESSOR (COD_PROFESSOR) on delete restrict on update restrict;

alter table PUBLICACAO_FORUM add constraint FK_USUARIO_PUBLICACAO_FORUM foreign key (COD_CADASTRO_USUARIO)
      references PERFIL_USUARIO (COD_PERFIL) on delete restrict on update restrict;

