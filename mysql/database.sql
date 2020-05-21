create table student(
	stu_ID char(12) not null,
	stu_name varchar(20)
);
create table admin(
	adm_ID int not null,
	adm_pass varchar(256)
);
create table car(
	car_ID char(7) not null,
	car_v tinyint,
	car_driver varchar(20),
	car_phone char(11)
);
create table clock(
	car_ID char(7),
	begin_time datetime,
	begin_place varchar(10)
);
create table book(
	car_ID char(7),
	stu_ID char(12)
);

insert into student (stu_ID,stu_name) values ('132112354610', 'zhangsan');
insert into student (stu_ID,stu_name) values ('132112354623', 'lisi');
insert into student (stu_ID,stu_name) values ('132112354636', 'wangwu');
insert into student (stu_ID,stu_name) values ('132112354649', 'tom');
insert into student (stu_ID,stu_name) values ('132112354662', 'jerry');
insert into student (stu_ID,stu_name) values ('132112354675', 'tim');
insert into student (stu_ID,stu_name) values ('132112354688', 'ammy');
insert into student (stu_ID,stu_name) values ('132112354701', 'kim');
insert into student (stu_ID,stu_name) values ('132112354714', 'ketty');
insert into student (stu_ID,stu_name) values ('132112354727', 'demasiya');
insert into admin (adm_ID, adm_pass) values (1000,'admin');
insert into admin (adm_ID, adm_pass) values (1001,'password');
insert into car (car_ID, car_v, car_driver, car_phone) values ('GA10001', 24, 'AAA', '13666667777');
insert into car (car_ID, car_v, car_driver, car_phone) values ('GA10002', 30, 'BBB', '13666667778');
insert into car (car_ID, car_v, car_driver, car_phone) values ('GA10003', 26, 'CCC', '13666667779');
insert into car (car_ID, car_v, car_driver, car_phone) values ('GA10004', 5, 'DDD', '13666667776');
insert into car (car_ID, car_v, car_driver, car_phone) values ('GA10005', 60, 'EEE', '13666667770');
insert into clock (car_ID, begin_time, begin_place) values ('GA10001', '2020/5/20  19:55:32', 'Aplace');
insert into clock (car_ID, begin_time, begin_place) values ('GA10004', '2020/5/22  01:05:32', 'Bplace');
insert into book (car_ID, stu_ID) values ('GA10001', '132112354610');
insert into book (car_ID, stu_ID) values ('GA10004', '132112354727');