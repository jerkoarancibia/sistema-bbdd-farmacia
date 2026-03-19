create database farma
use farma

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FARMACIA') and o.name = 'FK_FARMACIA_CIUDAD_FA_CIUDAD')
alter table FARMACIA
   drop constraint FK_FARMACIA_CIUDAD_FA_CIUDAD
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FARMACIA') and o.name = 'FK_FARMACIA_EMPLEADO__EMPLEADO')
alter table FARMACIA
   drop constraint FK_FARMACIA_EMPLEADO__EMPLEADO
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FARMACIA') and o.name = 'FK_FARMACIA_FARMACEUT_FARMACEU')
alter table FARMACIA
   drop constraint FK_FARMACIA_FARMACEUT_FARMACEU
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FARMACIA') and o.name = 'FK_FARMACIA_LABORATOR_LABORATO')
alter table FARMACIA
   drop constraint FK_FARMACIA_LABORATOR_LABORATO
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
           where  id = object_id('EMPLEADO')
            and   type = 'U')
   drop table EMPLEADO
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
            and   name  = 'EMPLEADO_FARMACIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index FARMACIA.EMPLEADO_FARMACIA_FK
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
            and   name  = 'LABORATORIO_FARMACIA_FK'
            and   indid > 0
            and   indid < 255)
   drop index FARMACIA.LABORATORIO_FARMACIA_FK
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
            and   name  = 'LABORATORIO_REMEDIOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index REMEDIOS.LABORATORIO_REMEDIOS_FK
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
            and   name  = 'FARMACIA_REMEDIOS_FK'
            and   indid > 0
            and   indid < 255)
   drop index REMEDIOS.FARMACIA_REMEDIOS_FK
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
   ACCIONTERAPEUTICA_NOMBRE varchar(20)          not null,
   constraint PK_ACCIONTERAPEUTICA primary key nonclustered (ACCIONTERAPEUTICA_ID)
)
go
insert into ACCIONTERAPEUTICA values (151, 'analgésico P4')
insert into ACCIONTERAPEUTICA values (345, 'farmacocinéticas P3')
insert into ACCIONTERAPEUTICA values (400, 'antijaquecoso T1')
insert into ACCIONTERAPEUTICA values (310, 'antijaquecoso T2')
insert into ACCIONTERAPEUTICA values (418, 'antigripal P1')
insert into ACCIONTERAPEUTICA values (333, 'analgésico L1')
insert into ACCIONTERAPEUTICA values (296, 'antiinflamatorio B5')
insert into ACCIONTERAPEUTICA values (425, 'antiemético B3')
insert into ACCIONTERAPEUTICA values (650, 'analgésico D1')
insert into ACCIONTERAPEUTICA values (560, 'antialérgico D4')



/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   CIUDAD_ID            int                  not null,
   CIUDAD_NOMBRE        varchar(20)          not null,
   CIUDAD_DIRECCION     varchar(20)          not null,
   constraint PK_CIUDAD primary key nonclustered (CIUDAD_ID)
)
go
insert into CIUDAD values (10,'Quilpué', 'Los carrera')
insert into CIUDAD values (20, 'Valparaiso', 'Arturo Pratt')
insert into CIUDAD values (30, 'Concon', 'Quintero')
insert into CIUDAD values (40, 'Villa Alemana', 'Estación')
insert into CIUDAD values (50, 'Peñablanca', 'V Región')
insert into CIUDAD values (60, 'Coquimbo', 'La herradura')
insert into CIUDAD values (70, 'La Serena', 'IV Región')
insert into CIUDAD values (80, 'Santiago', 'Región metropolitana')
insert into CIUDAD values (90, 'Arica', 'XV Región')
insert into CIUDAD values (110, 'Puerto Montt', 'XIII Región')


/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   EMPLEADO_ID          int                  not null,
   EMPLEADO_NOMBRE      varchar(20)          not null,
   EMPLEADO_DIRECCION   varchar(20)          not null,
   constraint PK_EMPLEADO primary key nonclustered (EMPLEADO_ID)
)
go
insert into EMPLEADO values (178009006, 'Jorge Rodriguez', 'Quilpué')
insert into EMPLEADO values (192003005, 'Manuel Sepúlveda', 'Valparaiso')
insert into EMPLEADO values (225001001, 'Silvia Perez', 'Concon')
insert into EMPLEADO values (93004001, 'Cristian Silva', 'Villa Alemana')
insert into EMPLEADO values (89008002, 'Kevin Soto', 'Peñablanca')
insert into EMPLEADO values (181003001, 'Camila Guerra', 'Coquimbo')
insert into EMPLEADO values (122009001, 'Vin Diesel', 'La Serena')
insert into EMPLEADO values (116006006, 'Sylvester Stallone', 'Santiago')
insert into EMPLEADO values (152223334, 'Dwayne Johnson ', 'Arica')
insert into EMPLEADO values (179998889, 'Lana Rhoades', 'Puerto Montt')


/*==============================================================*/
/* Table: FARMACEUTICO                                          */
/*==============================================================*/
create table FARMACEUTICO (
   FARMACEUTICO_ID      int                  not null,
   FARMACEUTICO_NOMBRE  varchar(20)          not null,
   constraint PK_FARMACEUTICO primary key nonclustered (FARMACEUTICO_ID)
)
go
insert into FARMACEUTICO values (180093332, 'Mandy Muse')
insert into FARMACEUTICO values (167003339, 'Alexis Texas')
insert into FARMACEUTICO values (193323321, 'Jason Statham')
insert into FARMACEUTICO values (334493231, 'Emma Watson')
insert into FARMACEUTICO values (152332949, 'Jean-Claude')
insert into FARMACEUTICO values (179284840, 'Robbie Williams')
insert into FARMACEUTICO values (109383938, 'Eric Clapton')
insert into FARMACEUTICO values (119294849, 'Steve Perry')
insert into FARMACEUTICO values (158294859, 'John Lennon')
insert into FARMACEUTICO values (119294494, 'Sam Worthington')


/*==============================================================*/
/* Table: FARMACIA                                              */
/*==============================================================*/
create table FARMACIA (
   FARMACIA_ID          int                  not null,
   LABORATORIO_ID       int                  not null,
   CIUDAD_ID            int                  not null,
   FARMACEUTICO_ID      int                  not null,
   EMPLEADO_ID          int                  not null,
   FARMACIA_NOMBRE      varchar(20)          not null,
   constraint PK_FARMACIA primary key nonclustered (FARMACIA_ID)
)
go
insert into FARMACIA values (1,11,10,180093332,178009006,'Cruz Verde')
insert into FARMACIA values (2,22,20,167003339,192003005,'Farmacias Ahumada')
insert into FARMACIA values (3,33,30,193323321,225001001,'Salcobrand')
insert into FARMACIA values (4,44,40,149293231,93004001,'Municipal')
insert into FARMACIA values (5,55,50,152332949,89008002,'Dr.Simi')
insert into FARMACIA values (6,66,60,179284840,181003001,'Popular')
insert into FARMACIA values (7,77,70,109383938,122009001,'La Rebaja')
insert into FARMACIA values (8,88,80,119294849,116006006,'Comunitaria')
insert into FARMACIA values (9,99,90,158294859,152223334,'Afich')
insert into FARMACIA values (10,100,110,119294494,179998889,'FarmaciaChile')






/*==============================================================*/
/* Index: LABORATORIO_FARMACIA_FK                               */
/*==============================================================*/
create index LABORATORIO_FARMACIA_FK on FARMACIA (
LABORATORIO_ID ASC
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
/* Index: FARMACEUTICO_FARMACIA_FK                              */
/*==============================================================*/
create index FARMACEUTICO_FARMACIA_FK on FARMACIA (
FARMACEUTICO_ID ASC
)
go

/*==============================================================*/
/* Index: EMPLEADO_FARMACIA_FK                                  */
/*==============================================================*/
create index EMPLEADO_FARMACIA_FK on FARMACIA (
EMPLEADO_ID ASC
)
go

/*==============================================================*/
/* Table: LABORATORIO                                           */
/*==============================================================*/
create table LABORATORIO (
   LABORATORIO_ID       int                  not null,
   LABORATORIO_NOMBRE   varchar(20)          not null,
   LABORATORIO_DIRECCION varchar(20)          not null,
   constraint PK_LABORATORIO primary key nonclustered (LABORATORIO_ID)
)
go
insert into LABORATORIO values (11,'knop','Quilpué')
insert into LABORATORIO values (22,'LaboratorioChile', 'Villa Alemana')
insert into LABORATORIO values (33,'Bagó', 'Concon')
insert into LABORATORIO values (44,'Saval','Valparaiso')
insert into LABORATORIO values (55,'Drag Pharma', 'Peñablanca')
insert into LABORATORIO values (66,'Maver','Coquimbo')
insert into LABORATORIO values (77,'Mintlab','La Serena')
insert into LABORATORIO values (88,'Fapasa','Puerto Montt')
insert into LABORATORIO values (99,'Portugal', 'Santiago')
insert into LABORATORIO values (100,'ION', 'Arica')


/*==============================================================*/
/* Table: MONODROGAS                                            */
/*==============================================================*/
create table MONODROGAS (
   MONODROGAS_ID        int                  not null,
   MONODROGAS_NOMBRE    varchar(20)          not null,
   constraint PK_MONODROGAS primary key nonclustered (MONODROGAS_ID)
)
go
insert into MONODROGAS values (1111,'Acetaminofeno')
insert into MONODROGAS values (2222, 'Falmalter')
insert into MONODROGAS values (3333, 'Ergotamina')
insert into MONODROGAS values (4444, 'Metamizol')
insert into MONODROGAS values (5555, 'Noscapina')
insert into MONODROGAS values (6666, 'Estearato ')
insert into MONODROGAS values (7777, 'Ciclooxigenasa ')
insert into MONODROGAS values (8888, 'Dopaminérgicos')
insert into MONODROGAS values (9999, 'Ácido acetil')
insert into MONODROGAS values (1010, 'Pseudoefedrina')


/*==============================================================*/
/* Table: PRESENTACION                                          */
/*==============================================================*/
create table PRESENTACION (
   PRESENTACION_ID      int                  not null,
   PRESENTACION_NOMBRE  varchar(20)          not null,
   constraint PK_PRESENTACION primary key nonclustered (PRESENTACION_ID)
)
go
insert into PRESENTACION values (10101, 'Comprimidos 500 mg')
insert into PRESENTACION values (20202, '14 cápsulas')
insert into PRESENTACION values (30303, '10 comprimidos ')
insert into PRESENTACION values (40404, '50 comprimidos ')
insert into PRESENTACION values (50505, 'Comprimidos 400 mg')
insert into PRESENTACION values (60606, 'Metamizol 300 mg')
insert into PRESENTACION values (70707, 'sódico 50 mg')
insert into PRESENTACION values (80808, 'Domperidona 10 mg')
insert into PRESENTACION values (90909, '100 mg acetil.')
insert into PRESENTACION values (100101, 'conteniendo 100 ml')


/*==============================================================*/
/* Table: REMEDIOS                                              */
/*==============================================================*/
create table REMEDIOS (
   REMEDIOS_ID          int                  not null,
   MONODROGAS_ID        int                  not null,
   PRESENTACION_ID      int                  not null,
   FARMACIA_ID          int                  not null,
   ACCIONTERAPEUTICA_ID int                  not null,
   LABORATORIO_ID       int                  not null,
   REMEDIOS_NOMBRE      varchar(20)          not null,
   constraint PK_REMEDIOS primary key nonclustered (REMEDIOS_ID)
)
go
insert into REMEDIOS values (111100,1111,10101,1,151,11,'Paracetamol')
insert into REMEDIOS values (222200,2222,20202,2,345,22,'Omeprazol')
insert into REMEDIOS values (333300,3333,30303,3,400,33,'Fredol')
insert into REMEDIOS values (444400,4444,40404,4,310,44,'Cefalmin')
insert into REMEDIOS values (555500,5555,50505,5,418,55,'Tapsin')
insert into REMEDIOS values (666600,6666,60606,6,333,55,'Dipirona')
insert into REMEDIOS values (777700,7777,70707,7,296,77,'Diclofenaco')
insert into REMEDIOS values (888800,8888,80808,8,425,88,'Domperidona')
insert into REMEDIOS values (999900,9999,90909,9,650,99,'Aspirina')
insert into REMEDIOS values (111110,1010,100101,10,560,100,'Nastizol')


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
/* Index: FARMACIA_REMEDIOS_FK                                  */
/*==============================================================*/
create index FARMACIA_REMEDIOS_FK on REMEDIOS (
FARMACIA_ID ASC
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
/* Index: LABORATORIO_REMEDIOS_FK                               */
/*==============================================================*/
create index LABORATORIO_REMEDIOS_FK on REMEDIOS (
LABORATORIO_ID ASC
)
go

alter table FARMACIA
   add constraint FK_FARMACIA_CIUDAD_FA_CIUDAD foreign key (CIUDAD_ID)
      references CIUDAD (CIUDAD_ID)
go

alter table FARMACIA
   add constraint FK_FARMACIA_EMPLEADO__EMPLEADO foreign key (EMPLEADO_ID)
      references EMPLEADO (EMPLEADO_ID)
go

alter table FARMACIA
   add constraint FK_FARMACIA_FARMACEUT_FARMACEU foreign key (FARMACEUTICO_ID)
      references FARMACEUTICO (FARMACEUTICO_ID)
go

alter table FARMACIA
   add constraint FK_FARMACIA_LABORATOR_LABORATO foreign key (LABORATORIO_ID)
      references LABORATORIO (LABORATORIO_ID)
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


-- Consultas de datos SQL--

select remedios_nombre, LABORATORIO_NOMBRE from REMEDIOS, LABORATORIO
order by REMEDIOS_NOMBRE, LABORATORIO_NOMBRE asc

select FARMACIA_NOMBRE, FARMACEUTICO_NOMBRE from FARMACIA, FARMACEUTICO
order by FARMACIA_NOMBRE, FARMACEUTICO_NOMBRE desc

select * from REMEDIOS
where REMEDIOS_NOMBRE like  'a%'

select FARMACIA_NOMBRE, REMEDIOS_NOMBRE, PRESENTACION_NOMBRE 
from REMEDIOS, FARMACIA, PRESENTACION

-- en este punto no he realizado las consultas de stock, ya que, no he agregado dicho atributo "stock".
-- en dado caso se deberia realizar la siguiente sintaxis: SQL MAX(STOCK) SELECT MAX FARMACIAS_STOCK FROM FARMACIAS
-- Y para la solicitud minima: SQL MIN (STOCK) SELECT MIN FARMACIAS_STOCK FROM FARMACIAS

  