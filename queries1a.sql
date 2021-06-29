select
    *
from
    customers
where
    wallet > 7500
    and tolerance > 0.7;

select
    *
from
    customers
where
    wallet > 5000
    or tolerance > 0.7;

select
    *
from
    customers;

select
    *
from
    products
ORDER BY
    market_price DESC;

select
    *
from
    products
ORDER BY
    market_price ASC;

select
    *
from
    products
order by
    market_price DESC,
    name ASC;

select
    *
from
    products
order by
    name ASC,
    market_price DESC;

select
    *
from
    products
order by
    market_price ASC,
    name DESC;

select
    *
from
    wallet
order by
    market_price DESC
limit
    5;

Select
    *
from
    products
where
    market_price > 20
order by
    market_price DESC
limit
    5;

select
    *
from
    transactions;

-- Display all the records with product_id either 2, 4 or 6.--
select
    *
from
    transactions
where
    product_id = 2
    or product_id = 4
    or product_id = 6;


select
    *
from
    transactions
where
    product_id in (2, 4, 6);


select name, wallet
    *
from
    customers
order by
    wallet DESC
limit
    5;