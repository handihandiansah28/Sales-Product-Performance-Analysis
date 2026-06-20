#melakukan cleaning data dengan mengubah tipe data
create or replace table portofolio-sql-496908.databases.order_details_ok as select cast (order_detail_id as string) as order_detail_id, cast(order_id as string) as order_id,	cast(product_id as string) as product_id,	price,	quantity from portofolio-sql-496908.databases.order_details;

create or replace table portofolio-sql-496908.databases.orders_ok as select cast (order_id as string) as order_id,	cast(seller_id as string) as seller_id, cast(buyer_id as string) as buyer_id,	cast(kodepos as string) as kodepos,	subtotal,	discount,	total,	created_at, safe_cast(paid_at as date) as paid_at,	safe_cast (delivery_at as date) as delivery_at from portofolio-sql-496908.databases.orders;

create or replace table portofolio-sql-496908.databases.products_ok as select cast(product_id as string) as product_id,	initcap(trim(desc_product)) desc_product,	category,	base_price from portofolio-sql-496908.databases.products;

create or replace table portofolio-sql-496908.databases.users_ok as select cast(user_id as string) as user_id,	nama_user,	cast(kodepos as string) as kodepos,	email from portofolio-sql-496908.databases.users;