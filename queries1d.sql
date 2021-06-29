select
    type,
    count(*)
from
    customers
group by
    type;

select
    tolerance,
    max(wallet) as "Balance"
from
    customers
group by
    tolerance;

select
    product_id,
    sum(quantity)
from
    transactions
group by
    product_id;

select
    t.datetime,
    t.customer_id,
    c.name,
    t.amount
from
    transactions as t
    inner join customers as c on t.customer_id = c.id;

select
    t.datetime,
    t.customer_id,
    c.name,
    t.amount
from
    transactions as t
    left join customers as c on t.customer_id = c.id;

select
    t.datetime,
    t.customer_id,
    c.name,
    t.amount
from
    transactions as t
    right join customers as c on t.customer_id = c.id;

select
    t.datetime,
    t.customer_id,
    c.name as Customer_Name,
    t.product_id,
    p.name as Product_Name,
    t.amount
from
    transactions as t
    left join customers as c on t.customer_id = c.id
    left join products as p on t.product_id = p.id;

--Task 3
SELECT
    product_id,
    SUM(quantity)
FROM
    transactions
GROUP BY
    product_id
ORDER BY
    product_id;

--Task 2
select * from transactions;


SELECT
    customers.id,
    customers.name,
    MAX(transactions.datetime)
FROM
    customers
    LEFT JOIN transactions ON customers.id = transactions.customer_id
GROUP BY
    customers.id
ORDER BY
    customers.id;


--Task 2b
SELECT
    c.id,
    c.name,
    MAX(t.datetime)
FROM
    customers as c
    LEFT JOIN transactions as t
    ON c.id = t.customer_id
GROUP BY
    c.id
ORDER BY
    c.id;

--Task 3
select
    s.id as "id",
    s.name as "seller name",
    s.wallet as "seller wallet",
    avg(t.amount) as "average earnings"
from
    transactions as t
    right join sellers as s on t.seller_id = s.id
group by
    s.id
order by
    s.id ASC;

--task 3b better----
SELECT
    s.id,
    s.name,
    s.wallet,
    avg(t.amount)
FROM
    sellers as s
    LEFT JOIN transactions as t 
    ON s.id = t.seller_id
GROUP BY
    s.id;


select * from products
where name like 'iPhone%';

select * from products
where name like 'iPhone___';

select * from products
where name like 'Google%';

create database b11_yih; 



