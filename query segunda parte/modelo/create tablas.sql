
Create database Licencias


use Licencias 

create table Empresa
(
idEmpresa INT not null primary key,
rutEmpresa INT not null,
Nombre Varchar(50) not null,
Comuna varchar(50) not null,
Region varchar(100) not null
)

create table Sucursal
(
idSucursal int not null primary key,
Nombre Varchar(100) not null,
Direccion Varchar(100) not null,
Comuna varchar(50) not null,
Region varchar(100) not null,
RecibeDoc int not null
)

create table Documentos
(
idDocumento int not null primary key,
Documento varchar(50) not null,
ubicacion varchar(1000) not null,
tipoDocumento varchar(50) not null,
idLicencia int not null
)

create table Estado
(
idEstado int not null primary key,
Estado varchar(50) not null
)

create table TipoLicencia
(
idTipoLicencia int not null primary key,
TipoLicencia varchar(50) not null
)

create table Trabajador
(
idTrabajador int not null primary key,
Rut varchar(50) not null,
Nombre varchar(100) not null,
Afiliado int not null,
idEmpresa int not null
)

create table Log_Modificacion
(
idLog int not null primary key,
tipoModificacion varchar(50) not null,
lugarmodificacion varchar(50) not null,
fechamodificacion datetime not null,
usuarioModificacion varchar(50) not null,
Resultado varchar(100) not null,
idLicencia int null,
idVisado int null,
)

create table VisadoDocumento
(
idVisado int not null primary key,
idDocumeto int not null,
idEstado int not null,
observacion varchar(100) not null,
fechaingreso datetime not null,
fechafin datetime not null,
)

create table Licencia
(
idLicencia int not null primary key,
idEmpresa int not null,
idSucursal int not null,
idTipoLicencia int not null,
idEstado int not null,
idVisado int not null,
folioLicencia varchar(100) not null,
idTrabajador int not null,
fechaIngreso datetime not null,
fechaFin datetime not null,
fechamodificacion datetime not null,
monto bigint not null
)