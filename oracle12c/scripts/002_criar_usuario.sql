CREATE TABLESPACE orcl_data LOGGING DATAFILE '/opt/oracle/oradata/ORCL/orcl.dbf' SIZE 100m AUTOEXTEND ON NEXT 100m EXTENT MANAGEMENT LOCAL;

ALTER SESSION SET "_ORACLE_SCRIPT"=true;

CREATE user orcl identified by orcl default tablespace orcl_data;

GRANT DBA TO orcl;

GRANT read,write on directory DATA_PUMP_DIR to orcl;

ALTER USER orcl IDENTIFIED BY orcl ACCOUNT UNLOCK;