create table netology.customers (
                                    id int primary key auto_increment unique,
                                    name varchar(16) not null,
                                    surname varchar(16) not null,
                                    age int check ( age > 0 ) check ( age < 200 ),
                                    phone_number varchar(16) not null default 'Не указан' unique
);

insert into netology.customers (name, surname, age, phone_number)
values ('Alexey', 'S.', 28, '+7-111-111-11-11');
insert into netology.customers (name, surname, age, phone_number)
values ('Ivan', 'G.', 31, '+7-222-222-22-22');
insert into netology.customers (name, surname, age, phone_number)
values ('Boris', 'N.', 23, '+7-333-333-33-33');
insert into netology.customers (name, surname, age, phone_number)
values ('Alexey', 'C.', 33, '+7-444-444-44-44');
insert into netology.customers (name, surname, age, phone_number)
values ('Vlad', 'R.', 25, '+7-555-555-55-55');

create table netology.orders (
                                 id int primary key auto_increment unique,
                                 date datetime not null default now(),
                                 customer_id int not null unique,
                                 product_name varchar(32) not null,
                                 amount int not null,
                                 foreign key (customer_id) references netology.customers (id)
);

insert into netology.orders (customer_id, product_name, amount)
values (4, 'Vacuum cleaner', 3);
insert into netology.orders (customer_id, product_name, amount)
values (2, 'Washing machine', 1);
insert into netology.orders (customer_id, product_name, amount)
values (1, 'Freezer', 1);
insert into netology.orders (customer_id, product_name, amount)
values (3, 'Microwave', 2);
insert into netology.orders (customer_id, product_name, amount)
values (5, 'Dishwasher', 2);