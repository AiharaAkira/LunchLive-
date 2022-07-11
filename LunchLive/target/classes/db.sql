//유저테이블
create table users(
U_id varchar2(50 char) ,
u_pw varchar2(50 char) not null,
u_nickname varchar2(20 char) ,
U_typeOfManager number(2) not null,
u_created_at date not null,
constraint users_PK primary key(u_id, u_nickname)  
);

//관리자 계정 생성
//insert into users values('admin','gychoi2511!','admin',1,sysdate);
//관리자 계정 삭제
//delete from users where u_id = 'admin';
//암호화 때문에 원래계정을 관리자로 변경
update users set U_typeOfManager = 1 where u_id = 'admin';

//유저 비밀번호 컬럼 길이 변경 (반드시)
ALTER TABLE users modify (u_pw varchar2(300 char));


//유저 조회
select * from USERS;
//유효성 작업확인용
select count(*) from users where u_id = 'alsdn46391234' and u_nickname ='asd11';

//커뮤니티
//이거 삭제할때 그냥 다른where c_page<request.getParameter(page) -1씩 하면 되지 않음?

create table community(
c_no number(10) primary key,
c_title varchar2(300 char) not null,
c_contents varchar2(300 char) not null,
c_file varchar2(500 char) not null,
c_comment number(10) not null,
c_like number(10) not null,
c_page number(10) not null,
c_date date not null
);

create sequence community_seq;




//댓글

create table comment(
com_no varchar2(300 char) primary key,
com_title varchar2(500 char) not null,
com_content varchar2(500 char) not null,
com_users number(10) not null,
com_community number(10) not null,
com_date date not null
);

create sequence comment_seq;