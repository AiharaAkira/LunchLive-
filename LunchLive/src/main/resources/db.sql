//유저테이블
create table users(
U_id varchar2(50 char) ,
u_pw varchar2(50 char) not null,
u_nickname varchar2(20 char) ,
U_typeOfManager number(2) not null,
u_created_at date not null,
constraint users_PK primary key(u_id, u_nickname)  
);

insert into users values('a','a','a',0,sysdate);

//유저 비밀번호 컬럼 길이 변경 (반드시)
ALTER TABLE users modify (u_pw varchar2(300 char));


//유저 조회
select * from USERS;
select count(*) from users where u_id = 'alsdn46391234' and u_nickname ='asd11';

