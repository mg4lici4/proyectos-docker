-- Conectarse al PDB correcto
ALTER SESSION SET CONTAINER = XEPDB1;

CREATE USER eshop_api IDENTIFIED BY eshop_api_password
  DEFAULT TABLESPACE users
  TEMPORARY TABLESPACE temp
  QUOTA UNLIMITED ON users;

-- Privilegios básicos para conexión y operaciones CRUD
GRANT CREATE SESSION TO eshop_api;
GRANT CREATE TABLE TO eshop_api;
GRANT CREATE SEQUENCE TO eshop_api;
GRANT CREATE VIEW TO eshop_api;
GRANT CREATE PROCEDURE TO eshop_api;

-- Privilegios adicionales útiles para ORM
GRANT CREATE TRIGGER TO eshop_api;
GRANT CREATE TYPE TO eshop_api;
GRANT CREATE SYNONYM TO eshop_api;

-- Rol de desarrollo
GRANT RESOURCE TO eshop_api;