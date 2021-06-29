select
    *
from
    customers;

select
    count (*)
from
    customers;

select
    count (*)
from
    customers
where
    wallet > 7500;

select
    max(wallet) as "Max Wallet",
    min(wallet) as "Min Wallet"
from
    customers;

select NOW();  

select * from customers;


--I want to find the average balance from customers from different types--
--select AVG(wallet) from customers;

select type, AVG(wallet) from customers group by type;