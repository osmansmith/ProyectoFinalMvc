use SIC
create table TERMICA(
NOMBRE_PROD int primary key not null,
CARBON VARCHAR(30) NOT NULL,
HORNOS VARCHAR(30) NOT NULL,
GASES VARCHAR(30) NOT NULL
)
CREATE TABLE SOLAR(
NOMBRE_PROD INT PRIMARY KEY NOT NULL,
SUPERFICIE VARCHAR(30) NOT NULL,
HORAS_SOL INT NOT NULL,
TIPO VARCHAR(30) NOT NULL
)
CREATE TABLE EOLICA(
NOMBRE_PROD INT PRIMARY KEY NOT NULL,
GENERADORES VARCHAR(30) NOT NULL,
SUPERFICIE VARCHAR(30) NOT NULL,
PROD_PROMEDIO VARCHAR(30) NOT NULL
)
CREATE TABLE PRESA(
NOMBRE_PROD INT PRIMARY KEY NOT NULL,
CAP_MAXIMA VARCHAR(30) NOT NULL,
AREA VARCHAR(30) NOT NULL,
TURBINAS VARCHAR(30) NOT NULL
)
CREATE TABLE EST_PRODUCTOR(
NOMBRE_EST_PRIM INT  NOT NULL,
NOMBRE_PROD     INT  NOT NULL,
FECHA    VARCHAR(30) NOT NULL,
CANTIDAD VARCHAR(30) NOT NULL
)
alter table EST_PRODUCTOR add constraint PK_EST_PRODUCTOR primary key (NOMBRE_EST_PRIM, NOMBRE_PROD)

CREATE TABLE EST_PRIMARIA(
NOMBRE_EST_PRIM         INT NOT NULL,
TRANSFORMADORES VARCHAR(30) NOT NULL,
PRIMARY KEY (NOMBRE_EST_PRIM)
)
CREATE TABLE RED(
RED INT PRIMARY KEY NOT NULL,
NOMBRE_EST_PRIM INT NOT NULL
)
CREATE TABLE ENVIA_ENERGIA(
RED INT PRIMARY KEY NOT NULL,
VOLUMEN VARCHAR(50) NOT NULL
)
CREATE TABLE COMPA�IA(
NOMBRE INT PRIMARY KEY NOT NULL
)
CREATE TABLE RED_COMPA�IA(
NOMBRE INT NOT NULL,
RED    INT NOT NULL
)
alter table RED_COMPA�IA add constraint PK_RED_COMPA�IA primary key (NOMBRE, RED)
CREATE TABLE LINEA(
NUM_LINEA INT NOT NULL,
RED       INT NOT NULL
)
alter table LINEA add constraint PK_LINEA primary key (NUM_LINEA, RED)
CREATE TABLE SUBESTACION(
NUM_SUBEST INT NOT NULL,
NUM_LINEA  INT NOT NULL,
RED        INT NOT NULL
)
alter table SUBESTACION add constraint PK_SUBESTACION primary key (NUM_SUBEST)
CREATE TABLE SUBEST_ZONA(
NUM_SUBEST INT NOT NULL,
CODIGO     INT NOT NULL
)
ALTER TABLE SUBEST_ZONA ADD CONSTRAINT PK_SUBEST_ZONA PRIMARY KEY (NUM_SUBEST,CODIGO)
CREATE TABLE ZONA(
CODIGO        INT NOT NULL,
CODIGO_PROV   INT NOT NULL,
CONS_PROMEDIO VARCHAR(30) NOT NULL,
NUM_PART      INT NOT NULL,
NUM_EMP       INT NOT NULL,
NUM_INST      INT NOT NULL
)
ALTER TABLE ZONA ADD CONSTRAINT PK_ZONA PRIMARY KEY (CODIGO,CODIGO_PROV)
CREATE TABLE PROVINCIA(
CODIGO_PROV INT PRIMARY KEY NOT NULL,
NOMBRE VARCHAR(30) NOT NULL
)