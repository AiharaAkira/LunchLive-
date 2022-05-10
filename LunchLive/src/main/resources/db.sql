//유저테이블
create table users(
U_id varchar2(50 char) ,
u_pw varchar2(50 char) not null,
u_nickname varchar2(20 char) ,
U_typeOfManager number(2) not null,
u_created_at date not null,
constraint users_PK primary key(u_id, u_nickname)  
);

insert into users values('id','pw','닉네임',1,sysdate);
//유저 조회
select * from USERS;

