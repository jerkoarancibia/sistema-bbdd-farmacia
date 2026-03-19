/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     23/09/2021 20:37:51                          */
/*==============================================================*/


if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FARMACIA') and o.name = 'FK_FARMACIA_CIUDAD_FA_CIUDAD')
alter table FARMACIA
   drop constraint FK_FARMACIA_CIUDAD_FA_CIUDAD
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FARMACIA') and o.name = 'FK_FARMACIA_EMPLEADOS_EMPLEADO')
alter table FARMACIA
   drop constraint FK_FARMACIA_EMPLEADOS_EMPLEADO
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FARMACIA') and o.name = 'FK_FARMACIA_FARMACEUT_FARMACEU')
alter table FARMACIA
   drop constraint FK_FARMACIA_FARMACEUT_FARMACEU
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REMEDIOS') and o.name = 'FK_REMEDIOS_ACCIONTER_ACCIONTE')
alter table REMEDIOS
   drop constraint FK_REMEDIOS_ACCIONTER_ACCIONTE
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REMEDIOS') and o.name = 'FK_REMEDIOS_FARMACIA__FARMACIA')
alter table REMEDIOS
   drop constraint FK_REMEDIOS_FARMACIA__FARMACIA
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REMEDIOS') and o.name = 'FK_REMEDIOS_LABORATOR_LABORATO')
alter table REMEDIOS
   drop constraint FK_REMEDIOS_LABORATOR_LABORATO
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REMEDIOS') and o.name = 'FK_REMEDIOS_MONODROGA_MONODROG')
alter table REMEDIOS
   drop constraint FK_REMEDIOS_MONODROGA_MONODROG
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REMEDIOS') and o.name = 'FK_REMEDIOS_PRESENTAC_PRESENTA')
alter table REMEDIOS
   drop constraint FK_REMEDIOS_PRESENTAC_PRESENTA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ACCIONTERAPEUTICA')
            and   type = 'U')
   drop table ACCIONTERAPEUTICA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CIUDAD')
            and   type = 'U')
   drop table CIUDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADOS')
            and   type = 'U')
   drop table EMPLEADOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FARMACEUTICO')
            and   type = 'U')
   drop table FARMACEUTICO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FARMACIA')
            and   name  = 'EMPLEADOS_FARMACIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index FARMACIA.EMPLEADOS_FARMACIA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FARMACIA')
            and   name  = 'CIUDAD_FARMACIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index FARMACIA.CIUDAD_FARMACIA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FARMACIA')
            and   name  = 'FARMACEUTICO_FARMACIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index FARMACIA.FARMACEUTICO_FARMACIA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FARMACIA')
            and   type = 'U')
   drop table FARMACIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LABORATORIO')
            and   type = 'U')
   drop table LABORATORIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MONODROGAS')
            and   type = 'U')
   drop table MONODROGAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRESENTACION')
            and   type = 'U')
   drop table PRESENTACION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REMEDIOS')
            and   name  = 'FARMACIA_REMEDIOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index REMEDIOS.FARMACIA_REMEDIOS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REMEDIOS')
            and   name  = 'ACCIONTERAPEUTICA_REMEDIOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index REMEDIOS.ACCIONTERAPEUTICA_REMEDIOS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REMEDIOS')
            and   name  = 'LABORATORIO_REMEDIOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index REMEDIOS.LABORATORIO_REMEDIOS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REMEDIOS')
            and   name  = 'PRESENTACION_REMEDIOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index REMEDIOS.PRESENTACION_REMEDIOS_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REMEDIOS')
            and   name  = 'MONODROGAS_REMEDIOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index REMEDIOS.MONODROGAS_REMEDIOS_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REMEDIOS')
            and   type = 'U')
   drop table REMEDIOS
go

/*==============================================================*/
/* Table: ACCIONTERAPEUTICA                                     */
/*==============================================================*/
create table ACCIONTERAPEUTICA (
   ACCIONTERAPEUTICA_ID int                  not null,
   ACCIONTERAPEUTICA_DESCRIPCION varchar(30)          not null,
   constraint PK_ACCIONTERAPEUTICA primary key nonclustered (ACCIONTERAPEUTICA_ID)
)
go

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   CIUDAD_ID            int                  not null,
   CIUDAD_NOMBRE        varchar(50)          not null,
   constraint PK_CIUDAD primary key nonclustered (CIUDAD_ID)
)
go

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS (
   EMPLEADOS_ID         int                  not null,
   EMPLEADOS_NOMBRE     varchar(30)          not null,
   EMPLEADOS_ROL        varchar(20)          not null,
   constraint PK_EMPLEADOS primary key nonclustered (EMPLEADOS_ID)
)
go

/*==============================================================*/
/* Table: FARMACEUTICO                                          */
/*==============================================================*/
create table FARMACEUTICO (
   FARMACEUTICO_ID      int                  not null,
   FARMACEUTICO_NOMBRE  varchar(30)          not null,
   constraint PK_FARMACEUTICO primary key nonclustered (FARMACEUTICO_ID)
)
go

/*==============================================================*/
/* Table: FARMACIA                                              */
/*==============================================================*/
create table FARMACIA (
   FARMACIA_ID          int                  not null,
   FARMACEUTICO_ID      int                  not null,
   CIUDAD_ID            int                  not null,
   EMPLEADOS_ID         int                  not null,
   FARMACIA_NOMBRE      varchar(30)          not null,
   FARMACIA_DIRECCION   varchar(50)          not null,
   constraint PK_FARMACIA primary key nonclustered (FARMACIA_ID)
)
go

/*==============================================================*/
/* Index: FARMACEUTICO_FARMACIA_FK                              */
/*==============================================================*/
create index FARMACEUTICO_FARMACIA_FK on FARMACIA (
FARMACEUTICO_ID ASC
)
go

/*==============================================================*/
/* Index: CIUDAD_FARMACIA_FK                                    */
/*==============================================================*/
create index CIUDAD_FARMACIA_FK on FARMACIA (
CIUDAD_ID ASC
)
go

/*==============================================================*/
/* Index: EMPLEADOS_FARMACIA_FK                                 */
/*==============================================================*/
create index EMPLEADOS_FARMACIA_FK on FARMACIA (
EMPLEADOS_ID ASC
)
go

/*==============================================================*/
/* Table: LABORATORIO                                           */
/*==============================================================*/
create table LABORATORIO (
   LABORATORIO_ID       int                  not null,
   LABORATORIO_NOMBRE   varchar(30)          not null,
   LABORATORIO_DIRECCION varchar(50)          not null,
   constraint PK_LABORATORIO primary key nonclustered (LABORATORIO_ID)
)
go

/*==============================================================*/
/* Table: MONODROGAS                                            */
/*==============================================================*/
create table MONODROGAS (
   MONODROGAS_ID        int                  not null,
   MONODROGAS_NOMBRE    varchar(30)          not null,
   constraint PK_MONODROGAS primary key nonclustered (MONODROGAS_ID)
)
go

/*==============================================================*/
/* Table: PRESENTACION                                          */
/*==============================================================*/
create table PRESENTACION (
   PRESENTACION_ID      int                  not null,
   PRESENTACION_NOMBRE  varchar(30)          not null,
   constraint PK_PRESENTACION primary key nonclustered (PRESENTACION_ID)
)
go

/*==============================================================*/
/* Table: REMEDIOS                                              */
/*==============================================================*/
create table REMEDIOS (
   REMEDIOS_ID          int                  not null,
   MONODROGAS_ID        int                  not null,
   PRESENTACION_ID      int                  not null,
   LABORATORIO_ID       int                  not null,
   ACCIONTERAPEUTICA_ID int                  not null,
   FARMACIA_ID          int                  not null,
   REMEDIOS_NOMBRE      varchar(30)          not null,
   constraint PK_REMEDIOS primary key nonclustered (REMEDIOS_ID)
)
go

/*==============================================================*/
/* Index: MONODROGAS_REMEDIOS_FK                                */
/*==============================================================*/
create index MONODROGAS_REMEDIOS_FK on REMEDIOS (
MONODROGAS_ID ASC
)
go

/*==============================================================*/
/* Index: PRESENTACION_REMEDIOS_FK                              */
/*==============================================================*/
create index PRESENTACION_REMEDIOS_FK on REMEDIOS (
PRESENTACION_ID ASC
)
go

/*==============================================================*/
/* Index: LABORATORIO_REMEDIOS_FK                               */
/*==============================================================*/
create index LABORATORIO_REMEDIOS_FK on REMEDIOS (
LABORATORIO_ID ASC
)
go

/*==============================================================*/
/* Index: ACCIONTERAPEUTICA_REMEDIOS_FK                         */
/*==============================================================*/
create index ACCIONTERAPEUTICA_REMEDIOS_FK on REMEDIOS (
ACCIONTERAPEUTICA_ID ASC
)
go

/*==============================================================*/
/* Index: FARMACIA_REMEDIOS_FK                                  */
/*==============================================================*/
create index FARMACIA_REMEDIOS_FK on REMEDIOS (
FARMACIA_ID ASC
)
go

alter table FARMACIA
   add constraint FK_FARMACIA_CIUDAD_FA_CIUDAD foreign key (CIUDAD_ID)
      references CIUDAD (CIUDAD_ID)
go

alter table FARMACIA
   add constraint FK_FARMACIA_EMPLEADOS_EMPLEADO foreign key (EMPLEADOS_ID)
      references EMPLEADOS (EMPLEADOS_ID)
go

alter table FARMACIA
   add constraint FK_FARMACIA_FARMACEUT_FARMACEU foreign key (FARMACEUTICO_ID)
      references FARMACEUTICO (FARMACEUTICO_ID)
go

alter table REMEDIOS
   add constraint FK_REMEDIOS_ACCIONTER_ACCIONTE foreign key (ACCIONTERAPEUTICA_ID)
      references ACCIONTERAPEUTICA (ACCIONTERAPEUTICA_ID)
go

alter table REMEDIOS
   add constraint FK_REMEDIOS_FARMACIA__FARMACIA foreign key (FARMACIA_ID)
      references FARMACIA (FARMACIA_ID)
go

alter table REMEDIOS
   add constraint FK_REMEDIOS_LABORATOR_LABORATO foreign key (LABORATORIO_ID)
      references LABORATORIO (LABORATORIO_ID)
go

alter table REMEDIOS
   add constraint FK_REMEDIOS_MONODROGA_MONODROG foreign key (MONODROGAS_ID)
      references MONODROGAS (MONODROGAS_ID)
go

alter table REMEDIOS
   add constraint FK_REMEDIOS_PRESENTAC_PRESENTA foreign key (PRESENTACION_ID)
      references PRESENTACION (PRESENTACION_ID)
go

