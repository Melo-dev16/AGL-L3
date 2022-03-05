/*==============================================================*/
/* Nom de SGBD :  Sybase SQL Anywhere 11                        */
/* Date de création :  04/03/2022 08:36:08                      */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_CLIENT') then
    alter table ASSOCIATION_1
       delete foreign key FK_ASSOCIAT_ASSOCIATI_CLIENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_RESERVAT') then
    alter table ASSOCIATION_1
       delete foreign key FK_ASSOCIAT_ASSOCIATI_RESERVAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_VOL') then
    alter table ASSOCIATION_10
       delete foreign key FK_ASSOCIAT_ASSOCIATI_VOL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_AEROPORT') then
    alter table ASSOCIATION_10
       delete foreign key FK_ASSOCIAT_ASSOCIATI_AEROPORT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_VOL') then
    alter table ASSOCIATION_12
       delete foreign key FK_ASSOCIAT_ASSOCIATI_VOL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_AEROPORT') then
    alter table ASSOCIATION_12
       delete foreign key FK_ASSOCIAT_ASSOCIATI_AEROPORT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_RESERVAT') then
    alter table ASSOCIATION_2
       delete foreign key FK_ASSOCIAT_ASSOCIATI_RESERVAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_VOL') then
    alter table ASSOCIATION_2
       delete foreign key FK_ASSOCIAT_ASSOCIATI_VOL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_RESERVAT') then
    alter table ASSOCIATION_3
       delete foreign key FK_ASSOCIAT_ASSOCIATI_RESERVAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_VOL') then
    alter table ASSOCIATION_3
       delete foreign key FK_ASSOCIAT_ASSOCIATI_VOL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_COMPAGNI') then
    alter table ASSOCIATION_4
       delete foreign key FK_ASSOCIAT_ASSOCIATI_COMPAGNI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_VOL') then
    alter table ASSOCIATION_4
       delete foreign key FK_ASSOCIAT_ASSOCIATI_VOL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_AEROPORT') then
    alter table ASSOCIATION_5
       delete foreign key FK_ASSOCIAT_ASSOCIATI_AEROPORT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_VOL') then
    alter table ASSOCIATION_5
       delete foreign key FK_ASSOCIAT_ASSOCIATI_VOL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_RESERVAT') then
    alter table ASSOCIATION_8
       delete foreign key FK_ASSOCIAT_ASSOCIATI_RESERVAT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_VOL') then
    alter table ASSOCIATION_8
       delete foreign key FK_ASSOCIAT_ASSOCIATI_VOL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RESERVAT_CONTENIR_VOL') then
    alter table RESERVATION
       delete foreign key FK_RESERVAT_CONTENIR_VOL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RESERVAT_DETENIR_TYPE_VOL') then
    alter table RESERVATION
       delete foreign key FK_RESERVAT_DETENIR_TYPE_VOL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RESERVAT_EFFECTUE_CLIENT') then
    alter table RESERVATION
       delete foreign key FK_RESERVAT_EFFECTUE_CLIENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_VOL_ARRIVEE_AEROPORT') then
    alter table VOL
       delete foreign key FK_VOL_ARRIVEE_AEROPORT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_VOL_DEPART_AEROPORT') then
    alter table VOL
       delete foreign key FK_VOL_DEPART_AEROPORT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_VOL_POSSEDER_COMPAGNI') then
    alter table VOL
       delete foreign key FK_VOL_POSSEDER_COMPAGNI
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='AEROPORT_PK'
     and t.table_name='AEROPORT'
) then
   drop index AEROPORT.AEROPORT_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='AEROPORT'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table AEROPORT
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_2_FK'
     and t.table_name='ASSOCIATION_1'
) then
   drop index ASSOCIATION_1.ASSOCIATION_2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_1_FK'
     and t.table_name='ASSOCIATION_1'
) then
   drop index ASSOCIATION_1.ASSOCIATION_1_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_1_PK'
     and t.table_name='ASSOCIATION_1'
) then
   drop index ASSOCIATION_1.ASSOCIATION_1_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASSOCIATION_1'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASSOCIATION_1
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_14_FK'
     and t.table_name='ASSOCIATION_10'
) then
   drop index ASSOCIATION_10.ASSOCIATION_14_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_13_FK'
     and t.table_name='ASSOCIATION_10'
) then
   drop index ASSOCIATION_10.ASSOCIATION_13_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_10_PK'
     and t.table_name='ASSOCIATION_10'
) then
   drop index ASSOCIATION_10.ASSOCIATION_10_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASSOCIATION_10'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASSOCIATION_10
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_16_FK'
     and t.table_name='ASSOCIATION_12'
) then
   drop index ASSOCIATION_12.ASSOCIATION_16_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_15_FK'
     and t.table_name='ASSOCIATION_12'
) then
   drop index ASSOCIATION_12.ASSOCIATION_15_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_12_PK'
     and t.table_name='ASSOCIATION_12'
) then
   drop index ASSOCIATION_12.ASSOCIATION_12_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASSOCIATION_12'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASSOCIATION_12
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_4_FK'
     and t.table_name='ASSOCIATION_2'
) then
   drop index ASSOCIATION_2.ASSOCIATION_4_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_3_FK'
     and t.table_name='ASSOCIATION_2'
) then
   drop index ASSOCIATION_2.ASSOCIATION_3_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_2_PK'
     and t.table_name='ASSOCIATION_2'
) then
   drop index ASSOCIATION_2.ASSOCIATION_2_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASSOCIATION_2'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASSOCIATION_2
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_6_FK'
     and t.table_name='ASSOCIATION_3'
) then
   drop index ASSOCIATION_3.ASSOCIATION_6_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_5_FK'
     and t.table_name='ASSOCIATION_3'
) then
   drop index ASSOCIATION_3.ASSOCIATION_5_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_3_PK'
     and t.table_name='ASSOCIATION_3'
) then
   drop index ASSOCIATION_3.ASSOCIATION_3_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASSOCIATION_3'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASSOCIATION_3
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_8_FK'
     and t.table_name='ASSOCIATION_4'
) then
   drop index ASSOCIATION_4.ASSOCIATION_8_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_7_FK'
     and t.table_name='ASSOCIATION_4'
) then
   drop index ASSOCIATION_4.ASSOCIATION_7_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_4_PK'
     and t.table_name='ASSOCIATION_4'
) then
   drop index ASSOCIATION_4.ASSOCIATION_4_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASSOCIATION_4'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASSOCIATION_4
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_10_FK'
     and t.table_name='ASSOCIATION_5'
) then
   drop index ASSOCIATION_5.ASSOCIATION_10_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_9_FK'
     and t.table_name='ASSOCIATION_5'
) then
   drop index ASSOCIATION_5.ASSOCIATION_9_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_5_PK'
     and t.table_name='ASSOCIATION_5'
) then
   drop index ASSOCIATION_5.ASSOCIATION_5_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASSOCIATION_5'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASSOCIATION_5
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_12_FK'
     and t.table_name='ASSOCIATION_8'
) then
   drop index ASSOCIATION_8.ASSOCIATION_12_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_11_FK'
     and t.table_name='ASSOCIATION_8'
) then
   drop index ASSOCIATION_8.ASSOCIATION_11_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASSOCIATION_8_PK'
     and t.table_name='ASSOCIATION_8'
) then
   drop index ASSOCIATION_8.ASSOCIATION_8_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASSOCIATION_8'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASSOCIATION_8
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='CLIENT_PK'
     and t.table_name='CLIENT'
) then
   drop index CLIENT.CLIENT_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CLIENT'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CLIENT
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='COMPAGNIE_PK'
     and t.table_name='COMPAGNIE'
) then
   drop index COMPAGNIE.COMPAGNIE_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='COMPAGNIE'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table COMPAGNIE
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='EFFECTUE_FK'
     and t.table_name='RESERVATION'
) then
   drop index RESERVATION.EFFECTUE_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='CONTENIR_FK'
     and t.table_name='RESERVATION'
) then
   drop index RESERVATION.CONTENIR_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='DETENIR_FK'
     and t.table_name='RESERVATION'
) then
   drop index RESERVATION.DETENIR_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RESERVATION_PK'
     and t.table_name='RESERVATION'
) then
   drop index RESERVATION.RESERVATION_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='RESERVATION'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table RESERVATION
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TYPE_VOL_PK'
     and t.table_name='TYPE_VOL'
) then
   drop index TYPE_VOL.TYPE_VOL_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TYPE_VOL'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TYPE_VOL
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ARRIVEE_FK'
     and t.table_name='VOL'
) then
   drop index VOL.ARRIVEE_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='DEPART_FK'
     and t.table_name='VOL'
) then
   drop index VOL.DEPART_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='POSSEDER_FK'
     and t.table_name='VOL'
) then
   drop index VOL.POSSEDER_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='VOL_PK'
     and t.table_name='VOL'
) then
   drop index VOL.VOL_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='VOL'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table VOL
end if;

/*==============================================================*/
/* Table : AEROPORT                                             */
/*==============================================================*/
create table AEROPORT 
(
   ID_AEROPORT          int                            not null,
   NOM_AER              char(35)                       null,
   VILLE_DESTINATION    char(35)                       null,
   PAYS_DESTINATION     char(35)                       null,
   constraint PK_AEROPORT primary key (ID_AEROPORT)
);

/*==============================================================*/
/* Index : AEROPORT_PK                                          */
/*==============================================================*/
create unique index AEROPORT_PK on AEROPORT (
ID_AEROPORT ASC
);

/*==============================================================*/
/* Table : ASSOCIATION_1                                        */
/*==============================================================*/
create table ASSOCIATION_1 
(
   ID_CLIENT            int                            not null,
   ID_RESERVATION       int                            not null,
   constraint PK_ASSOCIATION_1 primary key clustered (ID_CLIENT, ID_RESERVATION)
);

/*==============================================================*/
/* Index : ASSOCIATION_1_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_1_PK on ASSOCIATION_1 (
ID_CLIENT ASC,
ID_RESERVATION ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_1_FK                                     */
/*==============================================================*/
create index ASSOCIATION_1_FK on ASSOCIATION_1 (
ID_CLIENT ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_2_FK                                     */
/*==============================================================*/
create index ASSOCIATION_2_FK on ASSOCIATION_1 (
ID_RESERVATION ASC
);

/*==============================================================*/
/* Table : ASSOCIATION_10                                       */
/*==============================================================*/
create table ASSOCIATION_10 
(
   ID_VOL               int                            not null,
   ID_AEROPORT          int                            not null,
   constraint PK_ASSOCIATION_10 primary key clustered (ID_VOL, ID_AEROPORT)
);

/*==============================================================*/
/* Index : ASSOCIATION_10_PK                                    */
/*==============================================================*/
create unique clustered index ASSOCIATION_10_PK on ASSOCIATION_10 (
ID_VOL ASC,
ID_AEROPORT ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_13_FK                                    */
/*==============================================================*/
create index ASSOCIATION_13_FK on ASSOCIATION_10 (
ID_VOL ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_14_FK                                    */
/*==============================================================*/
create index ASSOCIATION_14_FK on ASSOCIATION_10 (
ID_AEROPORT ASC
);

/*==============================================================*/
/* Table : ASSOCIATION_12                                       */
/*==============================================================*/
create table ASSOCIATION_12 
(
   ID_VOL               int                            not null,
   ID_AEROPORT          int                            not null,
   constraint PK_ASSOCIATION_12 primary key clustered (ID_VOL, ID_AEROPORT)
);

/*==============================================================*/
/* Index : ASSOCIATION_12_PK                                    */
/*==============================================================*/
create unique clustered index ASSOCIATION_12_PK on ASSOCIATION_12 (
ID_VOL ASC,
ID_AEROPORT ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_15_FK                                    */
/*==============================================================*/
create index ASSOCIATION_15_FK on ASSOCIATION_12 (
ID_VOL ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_16_FK                                    */
/*==============================================================*/
create index ASSOCIATION_16_FK on ASSOCIATION_12 (
ID_AEROPORT ASC
);

/*==============================================================*/
/* Table : ASSOCIATION_2                                        */
/*==============================================================*/
create table ASSOCIATION_2 
(
   ID_RESERVATION       int                            not null,
   ID_VOL               int                            not null,
   constraint PK_ASSOCIATION_2 primary key clustered (ID_RESERVATION, ID_VOL)
);

/*==============================================================*/
/* Index : ASSOCIATION_2_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_2_PK on ASSOCIATION_2 (
ID_RESERVATION ASC,
ID_VOL ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_3_FK                                     */
/*==============================================================*/
create index ASSOCIATION_3_FK on ASSOCIATION_2 (
ID_RESERVATION ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_4_FK                                     */
/*==============================================================*/
create index ASSOCIATION_4_FK on ASSOCIATION_2 (
ID_VOL ASC
);

/*==============================================================*/
/* Table : ASSOCIATION_3                                        */
/*==============================================================*/
create table ASSOCIATION_3 
(
   ID_RESERVATION       int                            not null,
   ID_VOL               int                            not null,
   constraint PK_ASSOCIATION_3 primary key clustered (ID_RESERVATION, ID_VOL)
);

/*==============================================================*/
/* Index : ASSOCIATION_3_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_3_PK on ASSOCIATION_3 (
ID_RESERVATION ASC,
ID_VOL ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_5_FK                                     */
/*==============================================================*/
create index ASSOCIATION_5_FK on ASSOCIATION_3 (
ID_RESERVATION ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_6_FK                                     */
/*==============================================================*/
create index ASSOCIATION_6_FK on ASSOCIATION_3 (
ID_VOL ASC
);

/*==============================================================*/
/* Table : ASSOCIATION_4                                        */
/*==============================================================*/
create table ASSOCIATION_4 
(
   ID_COMPAGNIE         int                            not null,
   ID_VOL               int                            not null,
   constraint PK_ASSOCIATION_4 primary key clustered (ID_COMPAGNIE, ID_VOL)
);

/*==============================================================*/
/* Index : ASSOCIATION_4_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_4_PK on ASSOCIATION_4 (
ID_COMPAGNIE ASC,
ID_VOL ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_7_FK                                     */
/*==============================================================*/
create index ASSOCIATION_7_FK on ASSOCIATION_4 (
ID_COMPAGNIE ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_8_FK                                     */
/*==============================================================*/
create index ASSOCIATION_8_FK on ASSOCIATION_4 (
ID_VOL ASC
);

/*==============================================================*/
/* Table : ASSOCIATION_5                                        */
/*==============================================================*/
create table ASSOCIATION_5 
(
   ID_VOL               int                            not null,
   ID_AEROPORT          int                            not null,
   constraint PK_ASSOCIATION_5 primary key clustered (ID_VOL, ID_AEROPORT)
);

/*==============================================================*/
/* Index : ASSOCIATION_5_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_5_PK on ASSOCIATION_5 (
ID_VOL ASC,
ID_AEROPORT ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_9_FK                                     */
/*==============================================================*/
create index ASSOCIATION_9_FK on ASSOCIATION_5 (
ID_VOL ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_10_FK                                    */
/*==============================================================*/
create index ASSOCIATION_10_FK on ASSOCIATION_5 (
ID_AEROPORT ASC
);

/*==============================================================*/
/* Table : ASSOCIATION_8                                        */
/*==============================================================*/
create table ASSOCIATION_8 
(
   ID_RESERVATION       int                            not null,
   ID_VOL               int                            not null,
   constraint PK_ASSOCIATION_8 primary key clustered (ID_RESERVATION, ID_VOL)
);

/*==============================================================*/
/* Index : ASSOCIATION_8_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_8_PK on ASSOCIATION_8 (
ID_RESERVATION ASC,
ID_VOL ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_11_FK                                    */
/*==============================================================*/
create index ASSOCIATION_11_FK on ASSOCIATION_8 (
ID_RESERVATION ASC
);

/*==============================================================*/
/* Index : ASSOCIATION_12_FK                                    */
/*==============================================================*/
create index ASSOCIATION_12_FK on ASSOCIATION_8 (
ID_VOL ASC
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT 
(
   ID_CLIENT            int                            not null,
   NOM_CLI              long varchar                   null,
   PRENOM_CLI           long varchar                   null,
   CONTACT              int                            null,
   EMAIL                char(35)                       null,
   ADRESSE              char(50)                       null,
   constraint PK_CLIENT primary key (ID_CLIENT)
);

/*==============================================================*/
/* Index : CLIENT_PK                                            */
/*==============================================================*/
create unique index CLIENT_PK on CLIENT (
ID_CLIENT ASC
);

/*==============================================================*/
/* Table : COMPAGNIE                                            */
/*==============================================================*/
create table COMPAGNIE 
(
   ID_COMPAGNIE         int                            not null,
   NOM_COMP             char(35)                       null,
   ADRESSE_COMP         char(35)                       null,
   CONTACT_COMP         integer                        null,
   constraint PK_COMPAGNIE primary key (ID_COMPAGNIE)
);

/*==============================================================*/
/* Index : COMPAGNIE_PK                                         */
/*==============================================================*/
create unique index COMPAGNIE_PK on COMPAGNIE (
ID_COMPAGNIE ASC
);

/*==============================================================*/
/* Table : RESERVATION                                          */
/*==============================================================*/
create table RESERVATION 
(
   ID_RESERVATION       int                            not null,
   ID_VOL               int                            not null,
   ID_CLIENT            int                            not null,
   ID_TYPEVOL           int                            not null,
   STATUT_RESEVATION    char(25)                       null,
   DATE_RESERVATION     timestamp                      null,
   REGLER_RESERVATION   smallint                       null,
   MONTANT_REGLEMENT    numeric(100)                   null,
   constraint PK_RESERVATION primary key (ID_RESERVATION)
);

/*==============================================================*/
/* Index : RESERVATION_PK                                       */
/*==============================================================*/
create unique index RESERVATION_PK on RESERVATION (
ID_RESERVATION ASC
);

/*==============================================================*/
/* Index : DETENIR_FK                                           */
/*==============================================================*/
create index DETENIR_FK on RESERVATION (
ID_TYPEVOL ASC
);

/*==============================================================*/
/* Index : CONTENIR_FK                                          */
/*==============================================================*/
create index CONTENIR_FK on RESERVATION (
ID_VOL ASC
);

/*==============================================================*/
/* Index : EFFECTUE_FK                                          */
/*==============================================================*/
create index EFFECTUE_FK on RESERVATION (
ID_CLIENT ASC
);

/*==============================================================*/
/* Table : TYPE_VOL                                             */
/*==============================================================*/
create table TYPE_VOL 
(
   ID_TYPEVOL           int                            not null,
   NOM_TYPE             char(35)                       null,
   constraint PK_TYPE_VOL primary key (ID_TYPEVOL)
);

/*==============================================================*/
/* Index : TYPE_VOL_PK                                          */
/*==============================================================*/
create unique index TYPE_VOL_PK on TYPE_VOL (
ID_TYPEVOL ASC
);

/*==============================================================*/
/* Table : VOL                                                  */
/*==============================================================*/
create table VOL 
(
   ID_VOL               int                            not null,
   ID_AEROPORT          int                            not null,
   ID_COMPAGNIE         int                            not null,
   AER_ID_AEROPORT      int                            not null,
   DATE_DEPART          date                           null,
   DATE_ARRIVEE         date                           null,
   constraint PK_VOL primary key (ID_VOL),
   constraint AK_IDENTIFIANT_1_VOL unique (ID_VOL)
);

/*==============================================================*/
/* Index : VOL_PK                                               */
/*==============================================================*/
create unique index VOL_PK on VOL (
ID_VOL ASC
);

/*==============================================================*/
/* Index : POSSEDER_FK                                          */
/*==============================================================*/
create index POSSEDER_FK on VOL (
ID_COMPAGNIE ASC
);

/*==============================================================*/
/* Index : DEPART_FK                                            */
/*==============================================================*/
create index DEPART_FK on VOL (
ID_AEROPORT ASC
);

/*==============================================================*/
/* Index : ARRIVEE_FK                                           */
/*==============================================================*/
create index ARRIVEE_FK on VOL (
AER_ID_AEROPORT ASC
);

alter table ASSOCIATION_1
   add constraint FK_ASSOCIAT_ASSOCIATI_CLIENT foreign key (ID_CLIENT)
      references CLIENT (ID_CLIENT)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_1
   add constraint FK_ASSOCIAT_ASSOCIATI_RESERVAT foreign key (ID_RESERVATION)
      references RESERVATION (ID_RESERVATION)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_10
   add constraint FK_ASSOCIAT_ASSOCIATI_VOL foreign key (ID_VOL)
      references VOL (ID_VOL)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_10
   add constraint FK_ASSOCIAT_ASSOCIATI_AEROPORT foreign key (ID_AEROPORT)
      references AEROPORT (ID_AEROPORT)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_12
   add constraint FK_ASSOCIAT_ASSOCIATI_VOL foreign key (ID_VOL)
      references VOL (ID_VOL)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_12
   add constraint FK_ASSOCIAT_ASSOCIATI_AEROPORT foreign key (ID_AEROPORT)
      references AEROPORT (ID_AEROPORT)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_2
   add constraint FK_ASSOCIAT_ASSOCIATI_RESERVAT foreign key (ID_RESERVATION)
      references RESERVATION (ID_RESERVATION)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_2
   add constraint FK_ASSOCIAT_ASSOCIATI_VOL foreign key (ID_VOL)
      references VOL (ID_VOL)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_3
   add constraint FK_ASSOCIAT_ASSOCIATI_RESERVAT foreign key (ID_RESERVATION)
      references RESERVATION (ID_RESERVATION)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_3
   add constraint FK_ASSOCIAT_ASSOCIATI_VOL foreign key (ID_VOL)
      references VOL (ID_VOL)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_4
   add constraint FK_ASSOCIAT_ASSOCIATI_COMPAGNI foreign key (ID_COMPAGNIE)
      references COMPAGNIE (ID_COMPAGNIE)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_4
   add constraint FK_ASSOCIAT_ASSOCIATI_VOL foreign key (ID_VOL)
      references VOL (ID_VOL)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_5
   add constraint FK_ASSOCIAT_ASSOCIATI_AEROPORT foreign key (ID_AEROPORT)
      references AEROPORT (ID_AEROPORT)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_5
   add constraint FK_ASSOCIAT_ASSOCIATI_VOL foreign key (ID_VOL)
      references VOL (ID_VOL)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_8
   add constraint FK_ASSOCIAT_ASSOCIATI_RESERVAT foreign key (ID_RESERVATION)
      references RESERVATION (ID_RESERVATION)
      on update restrict
      on delete restrict;

alter table ASSOCIATION_8
   add constraint FK_ASSOCIAT_ASSOCIATI_VOL foreign key (ID_VOL)
      references VOL (ID_VOL)
      on update restrict
      on delete restrict;

alter table RESERVATION
   add constraint FK_RESERVAT_CONTENIR_VOL foreign key (ID_VOL)
      references VOL (ID_VOL)
      on update restrict
      on delete restrict;

alter table RESERVATION
   add constraint FK_RESERVAT_DETENIR_TYPE_VOL foreign key (ID_TYPEVOL)
      references TYPE_VOL (ID_TYPEVOL)
      on update restrict
      on delete restrict;

alter table RESERVATION
   add constraint FK_RESERVAT_EFFECTUE_CLIENT foreign key (ID_CLIENT)
      references CLIENT (ID_CLIENT)
      on update restrict
      on delete restrict;

alter table VOL
   add constraint FK_VOL_ARRIVEE_AEROPORT foreign key (AER_ID_AEROPORT)
      references AEROPORT (ID_AEROPORT)
      on update restrict
      on delete restrict;

alter table VOL
   add constraint FK_VOL_DEPART_AEROPORT foreign key (ID_AEROPORT)
      references AEROPORT (ID_AEROPORT)
      on update restrict
      on delete restrict;

alter table VOL
   add constraint FK_VOL_POSSEDER_COMPAGNI foreign key (ID_COMPAGNIE)
      references COMPAGNIE (ID_COMPAGNIE)
      on update restrict
      on delete restrict;

