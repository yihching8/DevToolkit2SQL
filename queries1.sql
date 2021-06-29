show tables;
describe customers;
SELECT *
FROM products;
select name,
    market_price
from products;
select p.name as "Product Name",
    p.market_price as "Market Price"
from products as p;
select name,
    market_price
from products;
select *
from customers where wallet>7500 and tolerance>0.7;
