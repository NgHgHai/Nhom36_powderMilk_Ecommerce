create database if not exists Nhom36_powderMilk_Ecommerce;
use Nhom36_powderMilk_Ecommerce;
create table if not exists supplier
(
    `id`        varchar(10) primary key not null,
    `name`      varchar(255),
    `address`   varchar(255),
    `email`     varchar(255),
    `phone`     varchar(255),
    `create_at` datetime                not null,
    `update_at` datetime                not null
);
create table if not exists category
(
    `id`        varchar(10) primary key not null,
    `name`      varchar(255),
    `desc`      text,
    `create_at` datetime                not null,
    `update_at` datetime                not null
);
create table if not exists discount
(
    `id`               varchar(10) primary key not null,
    `discount_name`    varchar(255),
    `desc`             text,
    `discount_percent` double,
    `active`           tinyint,
    `start_at`         datetime                not null,
    `finish_at`        datetime                not null,
    `create_at`        datetime                not null,
    `update_at`        datetime                not null
);
create table if not exists product
(
    `id`            varchar(10) primary key not null,
    `name`          varchar(255)            not null,
    `price`         double                  not null,
    `minSaletime`   int,
    `maxSaletime`   int,
    `desc`          text,
    `img_display`   varchar(2048),
    `weight_amount` double,
    `weight_units`  varchar(255),
    `active`        tinyint,
    `inventory`     int,
    `supplier_id`   varchar(10)             not null references supplier (id),
    `category_id`   varchar(10)             not null references category (id),
    `discount_id`   varchar(10)             not null references discount (id),
    `create_at`     datetime                not null,
    `update_at`     datetime                not null
);
create table if not exists user
(
    `id`        varchar(10) primary key not null,
    `lastname`  varchar(255),
    `firstname` varchar(255),
    `avatar`    varchar(255),
    `password`  varchar(255),
    `phone`     varchar(255),
    `address`   varchar(255),
    `email`     varchar(255),
    role        int,
    `create_at` datetime                not null,
    `update_at` datetime                not null,
    active      int
);
create table if not exists role
(
    `id`        tinyint primary key not null,
    `name`      varchar(255),
    `create_at` datetime            not null,
    `update_at` datetime            not null
);

create table if not exists `order`
(
    id                 varchar(10) primary key not null,
    user_id            varchar(10)             not null references `user` (id),
    `shipping_address` varchar(255),
    `shipping_phone`   varchar(255),
    `shipping_email`   varchar(255),
    `shipping_name`    varchar(255),
    `shipping_fee`     double,
    `total_price`      double,
    `status`           varchar(255),
    `create_at`        datetime                not null,
    `update_at`        datetime                not null
);
create table if not exists `order_items`
(
    `order_id`   varchar(10) not null references `order` (id),
    `product_id` varchar(10) not null references `product` (id),
    `quantity`   int,
    `price`      double,
    primary key (order_id, product_id)
);
create table if not exists cart
(
    `id`          varchar(10) primary key not null,
    `user_id`     varchar(10)             not null references `user` (id),
    `total_price` double,
    `create_at`   datetime                not null,
    `update_at`   datetime                not null
);
create table if not exists cart_items
(
    `cart_id`    varchar(10) not null,
    `product_id` varchar(10) not null references `product` (id),
    `quantity`   int,
    `price`      double,
    `create_at`  datetime    not null,
    `update_at`  datetime    not null,
    primary key (cart_id, product_id)
);
create table if not exists `blog`
(
    `id`        varchar(10) PRIMARY KEY NOT NULL,
    `admin_id`  varchar(10)             NOT NULL REFERENCES `user` (id),
    `title`     text                    NOT NULL,
    `image`     varchar(2048)           NOT NULL,
    `content`   text,
    `create_at` Datetime                NOT NULL,
    `update_at` Datetime                NOT NULL
);

create table if not exists slider
(
    `id`        varchar(10) PRIMARY KEY NOT NULL,
    name        varchar(255),
    url         varchar(255),
    `image`     varchar(2048)           NOT NULL,
    `create_at` Datetime                NOT NULL,
    `update_at` Datetime                NOT NULL
);




