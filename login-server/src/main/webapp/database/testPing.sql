select * from users;

create schema loginServer;
create table users(
	code integer primary key auto_increment,
	id varchar(30) not null,
    pw varchar(30) not null,
    regDate datetime not null default current_timestamp
);
insert users(id, pw) values('apple','1234');
insert users(id, pw) values('banana','1111');
insert users(id, pw) values('peach','2222');
insert users(id, pw) values('berry','3333');
insert users(id, pw) values('melon','4444');
insert users(id, pw) values('kakao','5555');
insert users(id, pw) values('water','6666');
insert users(id, pw) values('mandarin','7777');
insert users(id, pw) values('potato','8888');
insert users(id, pw) values('sweet','9999');
