CREATE OR REPLACE VIEW
`portofolio-sql-496908.databases.cat_product` AS
select concat(a.product_id,' - ',a.desc_product) product, a.category,
sum(b.price*b.quantity) revenue, sum(b.quantity) total_quantity,
count(distinct b.order_id)total_order
from portofolio-sql-496908.databases.products_ok a
join portofolio-sql-496908.databases.order_details_ok b
on a.product_id = b.product_id
join portofolio-sql-496908.databases.orders_ok c on b.order_id = c.order_id
where paid_at is not null and delivery_at is not null
group by a.product_id, a.desc_product,a.category
;

CREATE OR REPLACE VIEW
`portofolio-sql-496908.databases.KPIsTren` AS
select date(created_at) tanggal,
extract(year from created_at) tahun,
extract(month from created_at) bulan,
buyer_id, seller_id, order_id,
subtotal, discount, total from  portofolio-sql-496908.databases.orders_ok
where paid_at is not null and delivery_at is not null;


CREATE OR REPLACE VIEW
`portofolio-sql-496908.databases.Pertumbuhan_bulanan` AS
with penjualan_bulanan as (
select 
date_trunc(date(created_at), month) bulan_ke,
format_date('%B', created_at) bulan_pemesanan, 
sum(total) revenue
from portofolio-sql-496908.databases.orders_ok
where paid_at is not null and delivery_at is not null
group by bulan_ke, bulan_pemesanan
)
select bulan_ke, bulan_pemesanan, revenue, lag(revenue) over(order by bulan_ke,bulan_ke) prev_revenue,
round((revenue-lag(revenue) over(order by bulan_ke))/lag(revenue) over(order by bulan_ke)* 100,2) sales_growth from penjualan_bulanan;
