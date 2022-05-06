create table order_product_association
(
    id            int auto_increment
        primary key,
    productId     varchar(30) not null,
    customerEmail varchar(30) not null,
    constraint id
        unique (id)
);

create table orders
(
    id            int auto_increment
        primary key,
    orderId       int         not null,
    customerEmail varchar(30) null,
    constraint id
        unique (id),
    constraint orderId
        unique (orderId)
);

create table products
(
    id          int auto_increment
        primary key,
    productName varchar(20) not null,
    cost        int         null,
    constraint id
        unique (id)
);


