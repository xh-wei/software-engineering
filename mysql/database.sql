create table student(
	stu_ID char(12) not null,
	stu_name varchar(20)
);
create table admin(
	adm_ID int not null,
	adm_pass varchar(256)
);
create table car(
	car_ID char(8) not null,
	car_v tinyint,
	car_driver varchar(20),
	car_phone char(11)
);
create table clock(
	car_ID char(8),
	begin_time datetime,
	begin_place varchar(10),
);
create table book(
	car_ID char(8),
	stu_ID char(12)
);
--建表语句里面用逗号，外面可用封号，也可不用
alter table admin add primary key (adm_ID);
alter table student add primary key (stu_ID);
alter table car add primary key(car_ID );
alter table clock add constraint car_id_clock foreign key(car_ID)references car(car_ID);
alter table book add constraint car_id_book foreign key (car_ID)references car(car_ID);
alter table book add constraint stu_id_book foreign key (stu_ID)references student(stu_ID);

insert into student (stu_ID,stu_name) values ('132112354610', '张三');
insert into student (stu_ID,stu_name) values ('132112354623', '李四');
insert into student (stu_ID,stu_name) values ('132112354636', '王五');
insert into student (stu_ID,stu_name) values ('132112354649', 'tom');
insert into student (stu_ID,stu_name) values ('132112354662', 'jerry');
insert into student (stu_ID,stu_name) values ('132112354675', 'tim');
insert into student (stu_ID,stu_name) values ('132112354688', 'ammy');
insert into student (stu_ID,stu_name) values ('132112354701', 'kim');
insert into student (stu_ID,stu_name) values ('132112354714', 'ketty');
insert into student (stu_ID,stu_name) values ('132112354727', '德玛西亚');
insert into admin (adm_ID, adm_pass) values (1000,'admin');
insert into admin (adm_ID, adm_pass) values (1001,'password');
insert into car (car_ID, car_v, car_driver, car_phone) values ('甘A10001', 24, 'AAA', 13666667777');
insert into car (car_ID, car_v, car_driver, car_phone) values ('甘A10002', 30, 'BBB', 13666667778');
insert into car (car_ID, car_v, car_driver, car_phone) values ('甘A10003', 26, 'CCC', 13666667779');
insert into car (car_ID, car_v, car_driver, car_phone) values ('甘A10004', 5, 'DDD', 13666667776');
insert into car (car_ID, car_v, car_driver, car_phone) values ('甘A10004', 60, 'EEE', 13666667770');
insert into clock (car_ID, begin_time, begin_place) values ('甘A10001', 2020/5/20  19:55:32, '榆中');
insert into clock (car_ID, begin_time, begin_place) values ('甘A10004', 2020/5/22  01:05:32, '本部');
insert into clock (car_ID, stu_ID) values ('甘A10001', '132112354610');
insert into clock (car_ID, stu_ID) values ('甘A10004', '132112354727');