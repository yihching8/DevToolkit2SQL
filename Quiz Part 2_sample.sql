  
-- SQL quiz Part 2
----------------------------------------------------------------
--
-- 1. Write an query to sort all the books according to their unit price
select
    *
from
    books
order by
    unit_price;

--
-- 2. Write a query to display all the details of the purchases made after 
-- 2020-01-01 for the book titled “Lord of the Rings”.
select
    p.*
from
    purchases as p
    left join books as b on p.book_id = b.ISBN
where
    timestamp > "2020-01-01"
    and b.title = "Lord of the Rings";

--
-- 3. Write a query to find how many books has each customer purchased for each year.
select
    c.id,
    c.first_name,
    c.last_name,
    year(p.timestamp) as year,
    sum(p.quantity) as quantity
from
    customers as c
    left join purchases as p on c.id = p.cust_id
group by
    year(p.timestamp),
    c.id
order by
    c.id,
    year(p.timestamp);

--
-- 4. Write a query to view the details of the top 3 most selling books.
select
    b.*,
    sum(p.quantity) as quantity_sold
from
    books as b
    left join purchases as p on b.ISBN = p.book_id
group by
    b.ISBN
order by
    sum(p.quantity) desc
limit
    3;

--
-- 5. Write a query to find the author who sold the most books.
select
    a.*,
    sum(p.quantity) as total_sold
from
    authors as a
    left join books as b on a.id = b.author_id
    left join purchases as p on b.ISBN = p.book_id
group by
    a.id
order by
    total_sold desc
limit
    1;

--
-- 6. Write a query to find the author who made the most money (money = # books sold * unit price)
select
    a.*,
    sum(p.quantity * b.unit_price) as gross_total
from
    authors as a
    left join books as b on a.id = b.author_id
    left join purchases as p on b.ISBN = p.book_id
group by
    a.id
order by
    gross_total desc
limit
    1;