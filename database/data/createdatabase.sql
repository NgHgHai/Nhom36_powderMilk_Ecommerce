create database Nhom36_powderMilk_Ecommerce;
use Nhom36_powderMilk_Ecommerce;
create table blog
(
    `id`        varchar(10)   not null
        primary key,
    `admin_id`  varchar(10)   not null,
    `title`     text          not null,
    `image`     varchar(2048) not null,
    `content`   text          null,
    `create_at` datetime      not null,
    `update_at` datetime      not null
);

create table cart
(
    `id`          varchar(10) not null
        primary key,
    `user_id`     varchar(10) not null references   `user` (id),
    `total_price` double      null,
    `create_at`   datetime    not null,
    `update_at`   datetime    not null
);

create table cart_items
(
    `cart_id`    varchar(10) not null,
    `product_id` varchar(10) not null references `product` (id),
    `quantity`   int         null,
    `price`      double      null,
    `create_at`  datetime    not null,
    `update_at`  datetime    not null,
    primary key (cart_id, product_id)
);

create table category
(
    `id`        varchar(10)  not null
        primary key,
    `name`      varchar(255) null,
    `desc`    text         null,
    `create_at` datetime     not null,
    `update_at` datetime     not null
);

create table discount
(
    `id`               varchar(10)  not null
        primary key,
    `name`             varchar(255) null,
    `desc`           text         null,
    `discount_percent` double       null,
    `active`           tinyint      null,
    `start_at`         datetime     not null,
    `finish_at`        datetime     not null,
    `create_at`        datetime     not null,
    `update_at`        datetime     not null
);

create table `order`
(
    `id`               varchar(10)  not null
        primary key,
    `user_id`          varchar(10)  not null references `user` (id),
    `shipping_address` varchar(255) null,
    `shipping_phone`   varchar(255) null,
    `shipping_email`   varchar(255) null,
    `shipping_name`    varchar(255) null,
    `shipping_fee`     double       null,
    `total_price`      double       null,
    `status`           varchar(255) null,
    `create_at`        datetime     not null,
    `update_at`        datetime     not null
);

create table order_items
(
    `order_id`   varchar(10) not null references `order` (id),
    `product_id` varchar(10) not null references `product` (id),
    `quantity`   int         null,
    `price`      double      null,
    primary key (order_id, product_id)
);

create table product
(
    `id`            varchar(10)   not null
        primary key,
    `name`          varchar(255)  not null,
    `price`         double        not null,
    `desc`        text          null,
    `img_display`   varchar(2048) null,
    `weight_amount` double        null,
    `weight_units`  varchar(255)  null,
    `active`        tinyint       null,
    `inventory`     int           null,
    `supplier_id`   varchar(10)   not null references `supplier` (id),
    `category_id`   varchar(10)   not null  references `category` (id),
    `discount_id`   varchar(10)   not null references `discount` (id),
    `create_at`     datetime      not null,
    `update_at`     datetime      not null
);

create table slider
(
    `id`        varchar(10)   not null
        primary key,
    `name`      varchar(255)  null,
    `url`       varchar(255)  null,
    `image`     varchar(2048) not null,
    `create_at` datetime      not null,
    `update_at` datetime      not null
);

create table supplier
(
    `id`        varchar(10)  not null
        primary key,
    `name`      varchar(255) null,
    `address`   varchar(255) null,
    `email`     varchar(255) null,
    `phone`     varchar(255) null,
    `create_at` datetime     not null,
    `update_at` datetime     not null
);

create table user
(
    `id`        varchar(10)  not null
        primary key,
    `lastname`  varchar(255) null,
    `firstname` varchar(255) null,
    `avatar`    varchar(255) null,
    `password`  varchar(255) null,
    `phone`     varchar(255) null,
    `address`   varchar(255) null,
    `email`     varchar(255) null,
    `role`      int          not null,
    `create_at` datetime     not null,
    `update_at` datetime     not null
);
create table ImageProduct(
    id varchar(10) not null ,
    link varchar(255) not null,
    product_id varchar(10) not null,
    create_at datetime not null,
    update_at datetime not null,
    primary key (id,product_id)
);

alter table  product modify column name nvarchar(255) ;
