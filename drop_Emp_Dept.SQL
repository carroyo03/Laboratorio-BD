create table dept(    
  deptno     number(2,0),    
  dname      varchar2(100),    
  loc        varchar2(60),    
  constraint pk_dept primary key (deptno)    
);

create table dept2(    
  deptno     number(2,0),    
  dname      varchar2(100),    
  loc        varchar2(60),    
  constraint pk_dept2 primary key (deptno)    
)tablespace LIVESQL_USERS;

INSERT INTO DEPT2 (DEPTNO, DNAME, LOC)  VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT2 (DEPTNO, DNAME, LOC) VALUES(20, 'SALES', 'MADRID');
COMMIT;

select * from dept2;
drop table dept2;

FLASHBACK TABLE DEPT2 TO BEFORE DROP;

SELECT * FROM DEPT2;

--No se ha borrado nada

drop table dept;

--ORA-02449: unique/primary keys in table referenced by foreign keys 
-- Habría que añadirle cascade constraints para que borrara las FKs a las que se refiere