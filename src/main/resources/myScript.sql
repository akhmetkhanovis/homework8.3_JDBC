select o.product_name
from netology.orders o
         join netology.customers c on c.id = o.customer_id
where name = :name;