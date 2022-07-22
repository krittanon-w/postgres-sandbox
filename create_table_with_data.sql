DROP TABLE IF EXISTS public.orders;
CREATE TABLE IF NOT EXISTS public.orders
(
    id SERIAL NOT null PRIMARY KEY,
    product_id bigint NOT NULL,
    customer_id bigint NOT NULL,
    created_at timestamp with time zone NOT null DEFAULT NOW()
);

DROP TABLE IF EXISTS public.products;
CREATE TABLE IF NOT EXISTS public.products
(
    id SERIAL NOT null PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL,
    created_at timestamp with time zone DEFAULT NOW()
);

DROP TABLE IF EXISTS public.customers;
CREATE TABLE IF NOT EXISTS public.customers
(
    id SERIAL NOT null PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL,
    created_at timestamp with time zone DEFAULT NOW()
);

insert into public.customers (name, created_at) values ('Adams', '2022-01-21 12:34:27.156 +0700');
insert into public.customers (name, created_at) values ('Baker', '2022-01-22 13:30:24.116 +0700');
insert into public.customers (name, created_at) values ('Clark', '2022-02-24 14:14:24.126 +0700');
insert into public.customers (name, created_at) values ('Davis', '2022-02-26 17:32:21.756 +0700');
insert into public.customers (name, created_at) values ('Evans', '2022-03-21 12:03:14.186 +0700');

insert into public.products (name, price, created_at) values ('Orbital Keys', 100, '2022-01-21 12:34:27.156 +0700');
insert into public.products (name, price, created_at) values ('XPress Bottle', 200, '2022-01-22 13:30:24.116 +0700');
insert into public.products (name, price, created_at) values ('Swish Wallet', 300, '2022-04-22 12:04:22.756 +0700');
insert into public.products (name, price, created_at) values ('Sharpy Knife', 400, '2022-04-22 12:04:22.756 +0700');
insert into public.products (name, price, created_at) values ('Pop Corn', 400, '2022-05-22 12:04:22.756 +0700');

insert into public.orders (product_id, customer_id, created_at) values (1, 4, '2022-08-16 18:20:27.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (1, 1, '2022-05-15 20:22:31.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (2, 1, '2022-05-12 10:11:33.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (2, 2, '2022-07-17 19:11:26.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (4, 2, '2022-07-10 13:30:22.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (2, 3, '2022-06-19 15:39:16.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (2, 3, '2022-05-15 10:41:18.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (4, 1, '2022-08-10 19:48:46.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (4, 3, '2022-05-14 10:48:11.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (3, 3, '2022-07-13 11:39:23.000 +0700');
insert into public.orders (product_id, customer_id, created_at) values (3, 2, '2022-06-19 20:47:20.000 +0700');

select o.*, p.*, c.*
from public.orders o
left join products p on o.product_id = p.id
left join customers c on o.customer_id = c.id
order by o.created_at asc;
