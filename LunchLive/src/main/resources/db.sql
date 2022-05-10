//유저테이블
create table users(
U_id varchar2(50 char) primary key,
u_pw varchar2(50 char) not null,
u_nickname varchar2(20 char) primary key,
U_typeOfManager number(2) not null,
u_created_at date not null
);

insert into users values('id','pw','닉네임',1,sysdate);

