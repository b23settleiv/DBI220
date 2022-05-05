create table customers
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null
);

create table orders
(
    id         int auto_increment
        primary key,
    product    varchar(20) null,
    customerId int         null,
    orderId    varchar(20) null,
    constraint id
        unique (id),
    constraint orderId
        unique (orderId),
    constraint orders_ibfk_1
        foreign key (customerId) references customers (id)
);

create index customerId
    on orders (customerId);


