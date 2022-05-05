create table orders
(
    id        int auto_increment
        primary key,
    orderId   int         not null,
    userEmail varchar(30) null,
    constraint id
        unique (id)
);

create table product_order_association
(
    id        int auto_increment
        primary key,
    productId int not null,
    orderId   int not null,
    constraint id
        unique (id)
);

create table products
(
    id             int auto_increment
        primary key,
    productId      int         not null,
    expirationDate varchar(20) null,
    constraint id
        unique (id)
);


