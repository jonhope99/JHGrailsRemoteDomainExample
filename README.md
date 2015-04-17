# JHGrailsRemoteDomainExample
JHGrailsRemoteDomainExample

Mainapp referencing a domain and serviec in a plugin
To run:
1. edit DataSource.groovy with connection details
2. if they dont exist create db object(s) - table and sequences

CREATE TABLE "PLAY"."JHDEPT"
  (
    "ID" NUMBER,
    "JHDEPT_ID" NUMBER, 
    "DEPTNO" NUMBER,
    "DNAME"  VARCHAR2(50 CHAR),
    "LOC"    VARCHAR2(30 CHAR),
    CONSTRAINT "HIBERNATE_PK" PRIMARY KEY ("ID"),
    CONSTRAINT "JHDEPT_PK" UNIQUE ("JHDEPT_ID"),
    CONSTRAINT "DEPTNO" UNIQUE ("DEPTNO"))

CREATE SEQUENCE  "PLAY"."JHDEPT_JHDEPT_ID_S" MINVALUE 3300000 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3300000 NOCACHE  NOORDER  NOCYCLE ;
CREATE SEQUENCE  "PLAY"."JHDEPT_DEPTNO_S" MINVALUE 4400000 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4400000 NOCACHE  NOORDER  NOCYCLE ;
CREATE SEQUENCE  "PLAY"."JHDEPT_S"  MINVALUE 1000000 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 22000000 NOCACHE  NOORDER  NOCYCLE ;