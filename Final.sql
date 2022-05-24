create table midterm.class
(
    id            int auto_increment
        primary key,
    class_name    varchar(10) null,
    class_subject varchar(10) null
);

create table midterm.class_roster
(
    id         int auto_increment
        primary key,
    class_id   int not null,
    student_id int not null
);

create table midterm.grade
(
    id        int auto_increment
        primary key,
    grade_num tinyint null
);

create table midterm.student_address
(
    id      int auto_increment
        primary key,
    address varchar(40) not null,
    town    varchar(15) not null,
    zip     smallint    not null
);

create table midterm.student
(
    id         int auto_increment
        primary key,
    firstname  varchar(15) not null,
    lastname   varchar(15) not null,
    grade_id   int         null,
    address_id int         null,
    constraint student_ibfk_1
        foreign key (grade_id) references midterm.grade (id),
    constraint student_ibfk_2
        foreign key (address_id) references midterm.student_address (id)
);

create index address_id
    on midterm.student (address_id);

create index grade_id
    on midterm.student (grade_id);


