SELECT * FROM user_tablespaces;

create table dept2(    
  deptno     number(2,0),    
  dname      varchar2(100),    
  loc        varchar2(60),    
  constraint pk_dept2 primary key (deptno)    
)tablespace LIVESQL_USERS;