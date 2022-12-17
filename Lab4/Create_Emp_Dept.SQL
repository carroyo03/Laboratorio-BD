
create table dept(    
  deptno     number(2,0),    
  dname      varchar2(100),    
  loc        varchar2(60),    
  constraint pk_dept primary key (deptno)    
)

create table emp(    
  empno    number(4,0),    
  ename    varchar2(50),    
  job      varchar2(100),    
  boss      number(4,0),    
  hiredate date,    
  salary      number(7,2),    
  commision     number(7,2),    
  deptno   number(2,0) ,   
  constraint pk_emp primary key (empno),    
  constraint fk_deptno foreign key (deptno) references dept (deptno)    
);

create type Journey as object(
    StartTime TIMESTAMP,
    EndTime TIMESTAMP
);

create index NombreEmpleado on emp(ename);

create sequence DeptCount
    INCREMENT BY 1
    START WITH 10
    MAXVALUE 1000
    NOCYCLE
;

SELECT DeptCount.NEXTVAL FROM DUAL;
