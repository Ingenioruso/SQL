/* 1)	Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null */

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
)

-- 2)	Наполнить таблицу employee 70 строками.

insert into employees (id, employee_name)
values 
(1, 'Александр'),
(2, 'Алексей'),
(3, 'Андрей'),
(4, 'Антон'),
(5, 'Артём'),
(6, 'Борис'),
(7, 'Вадим'),
(8, 'Валентин'),
(9, 'Валерий'),
(10, 'Василий'),
(11, 'Виктор'),
(12, 'Виталий'),
(13, 'Владимир'),
(14, 'Владислав'),
(15, 'Вячеслав'),
(16, 'Геннадий'),
(17, 'Георгий'),
(18, 'Григорий'),
(19, 'Денис'),
(20, 'Дмитрий'),
(21, 'Евгений'),
(22, 'Егор'),
(23, 'Иван'),
(24, 'Игорь'),
(25, 'Илья'),
(26, 'Кирилл'),
(27, 'Константин'),
(28, 'Леонид'),
(29, 'Максим'),
(30, 'Михаил'),
(31, 'Никита'),
(32, 'Николай'),
(33, 'Олег'),
(34, 'Павел'),
(35, 'Пётр'),
(36, 'Роман'),
(37, 'Руслан'),
(38, 'Сергей'),
(39, 'Станислав'),
(40, 'Тимофей'),
(41, 'Фёдор'),
(42, 'Юрий'),
(43, 'Ярослав'),
(44, 'Александра'),
(45, 'Александрина'),
(46, 'Алена'),
(47, 'Алина'),
(48, 'Алиса'),
(49, 'Алла'),
(50, 'Анастасия'),
(51, 'Ангелина'),
(52, 'Анжелика'),
(53, 'Анна'),
(54, 'Антонина'),
(55, 'Арина'),
(56, 'Валентина'),
(57, 'Валерия'),
(58, 'Варвара'),
(59, 'Вера'),
(60, 'Вероника'),
(61, 'Виктория'),
(62, 'Галина'),
(63, 'Дарья'),
(64, 'Екатерина'),
(65, 'Елена'),
(66, 'Елизавета'),
(67, 'Есения'),
(68, 'Ирина'),
(69, 'Карина'),
(70, 'Кристина');

/* 3)	Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null */

create table salary (
	id serial primary key,
	monthly_salary int not null
);

/* 4)	Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500 */

UPDATE salary
SET monthly_salary = 
  CASE
    WHEN id = 1 THEN 1000
    WHEN id = 2 THEN 1100
    WHEN id = 3 THEN 1200
    WHEN id = 4 THEN 1300
    WHEN id = 5 THEN 1400
    WHEN id = 6 THEN 1500
    WHEN id = 7 THEN 1600
    WHEN id = 8 THEN 1700
    WHEN id = 9 THEN 1800
    WHEN id = 10 THEN 1900
    WHEN id = 11 THEN 2000
    WHEN id = 12 THEN 2100
    WHEN id = 13 THEN 2200
    WHEN id = 14 THEN 2300
    WHEN id = 15 THEN 2400
    ELSE 2500
  END;

 insert into salary (monthly_salary)
 values (2500);
 
insert into salary (id, monthly_salary)
 values (16, 2500);

delete from salary where id = 17;

/* 5)	Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null */

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

/* 6)	Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id */

insert into employee_salary (employee_id, salary_id) 
values
(63, 11),
(26, 2),
(51, 12),
(16, 10),
(49, 2),
(33, 6),
(60, 5),
(31, 4),
(10, 6),
(34, 13),
(64, 1),
(21, 5),
(27, 5),
(22, 12),
(11, 9),
(50, 8),
(23, 13),
(69, 2),
(12, 12),
(4, 5),
(3, 8),
(19, 9),
(7, 4),
(80, 11),
(8, 4),
(79, 13),
(57, 15),
(78, 13),
(59, 1),
(77, 1),
(14, 6),
(76, 12),
(45, 10),
(75, 14),
(43, 5),
(74, 15),
(48, 2),
(73, 11),
(13, 2),
(72, 14),
(40, 8),
(71, 1);

delete from employee_salary;

insert into employee_salary (employee_id, salary_id) 
values
(51, 12),
(16, 10),
(49, 2),
(33, 6),
(60, 5),
(31, 4),
(10, 6),
(34, 13),
(64, 1),
(21, 5),
(27, 5),
(22, 12),
(11, 9),
(50, 8),
(23, 13),
(69, 2),
(12, 12),
(4, 5),
(3, 8),
(19, 9),
(7, 4),
(80, 11),
(8, 4),
(79, 13),
(57, 15),
(78, 13),
(59, 1),
(77, 1),
(14, 6),
(76, 12),
(45, 10),
(75, 14),
(43, 5),
(74, 15),
(48, 2),
(73, 11),
(13, 2),
(72, 14),
(40, 8),
(71, 1);

drop table employee_salary;

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id) 
values
(51, 12),
(16, 10),
(49, 2),
(33, 6),
(60, 5),
(31, 4),
(10, 6),
(34, 13),
(64, 1),
(21, 5),
(27, 5),
(22, 12),
(11, 9),
(50, 8),
(23, 13),
(69, 2),
(12, 12),
(4, 5),
(3, 8),
(19, 9),
(7, 4),
(80, 11),
(8, 4),
(79, 13),
(57, 15),
(78, 13),
(59, 1),
(77, 1),
(14, 6),
(76, 12),
(45, 10),
(75, 14),
(43, 5),
(74, 15),
(48, 2),
(73, 11),
(13, 2),
(72, 14),
(40, 8),
(71, 1);

/* 7)	Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique */

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles 
rename role_title to role_name;

/* 9)	Наполнить таблицу roles 20 строками:

id	role_name
1	Junior Python developer
2	Middle Python developer
3	Senior Python developer
4	Junior Java developer
5	Middle Java developer
6	Senior Java developer
7	Junior JavaScript developer
8	Middle JavaScript developer
9	Senior JavaScript developer
10	Junior Manual QA engineer
11	Middle Manual QA engineer
12	Senior Manual QA engineer
13	Project Manager
14	Designer
15	HR
16	CEO
17	Sales manager
18	Junior Automation QA engineer
19	Middle Automation QA engineer
20	Senior Automation QA engineer */

update roles 
set role_name =
CASE
    WHEN id = 1 THEN 'Junior Python developer'
    WHEN id = 2 THEN 'Middle Python developer'
    WHEN id = 3 THEN 'Senior Python developer'
    WHEN id = 4 THEN 'Junior Java developer'
    WHEN id = 5 THEN 'Middle Java developer'
    WHEN id = 6 THEN 'Senior Java developer'
    WHEN id = 7 THEN 'Junior JavaScript developer'
    WHEN id = 8 THEN 'Middle JavaScript developer'
    WHEN id = 9 THEN 'Senior JavaScript developer'
    WHEN id = 10 THEN 'Junior Manual QA engineer'
    WHEN id = 11 THEN 'Middle Manual QA engineer'
    WHEN id = 12 THEN 'Senior Manual QA engineer'
    WHEN id = 13 THEN 'Project Manager'
    WHEN id = 14 THEN 'Designer'
    WHEN id = 15 THEN 'HR'
    WHEN id = 16 THEN 'CEO'
    WHEN id = 17 THEN 'Sales manager'
    WHEN id = 18 THEN 'Junior Automation QA engineer'
    WHEN id = 19 THEN 'Middle Automation QA engineer'
    WHEN id = 20 THEN 'Senior Automation QA engineer'
end; 

insert into roles (role_name)
values
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

/* 10)	Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id) */

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
);

-- 11)	Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values
(57, 13),
(34, 2),
(16, 7),
(10, 6),
(65, 15),
(42, 3),
(23, 11),
(51, 12),
(6, 8),
(29, 9),
(38, 4),
(49, 5),
(60, 1),
(19, 10),
(46, 17),
(21, 20),
(64, 14),
(36, 18),
(14, 19),
(43, 16),
(28, 7),
(3, 2),
(15, 5),
(20, 4),
(61, 8),
(54, 13),
(45, 19),
(9, 17),
(55, 6),
(62, 1),
(18, 12),
(40, 9),
(68, 10),
(58, 11),
(13, 6),
(24, 3),
(1, 1),
(67, 20),
(41, 14),
(56, 18),
(35, 20),
(33, 1);

drop table roles_employee;

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
);

insert into roles_employee (employee_id, role_id)
values
(57, 13),
(34, 2),
(16, 7),
(10, 6),
(65, 15),
(42, 3),
(23, 11),
(51, 12),
(6, 8),
(29, 9),
(38, 4),
(49, 5),
(60, 1),
(19, 10),
(46, 17),
(21, 20),
(64, 14),
(36, 18),
(14, 19),
(43, 16),
(28, 7),
(3, 2),
(15, 5),
(20, 4),
(61, 8),
(54, 13),
(45, 19),
(9, 17),
(55, 6),
(62, 1),
(18, 12),
(40, 9),
(68, 10),
(58, 11),
(13, 6),
(24, 3),
(1, 1),
(67, 20),
(41, 14),
(56, 18);

-- 8)	Поменять тип столба role_name с int на varchar(30)

create table example (
	id serial primary key,
	role_title int unique not null
);

alter table example 
alter column role_title set data type varchar(30);

insert into example (role_title)
values ('primer');

select * from example;

drop table example;

select * from salary
order by id;

select * from employees

select * from employee_salary 

select * from roles;

select * from roles_employee;