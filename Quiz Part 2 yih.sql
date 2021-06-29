--Quiz Part 2
--1.sort all the books according to 
--their unit price
select
    *
from
    books
order by
    unit_price; 
    
    
--2.display all the details of the 
--purchases made after 2020-01-01 for “Lord of the Rings”.
select
    p.*
from
    purchases as p
    left join books as b on p.book_id = b.ISBN
where
    timestamp > "2020-01-01"
    and b.title = "Lord of the Rings";

--3. find how many books has each customer 
--purchased for each year
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
    c.id,
    year
order by
    c.id,
    year;

--4.details of the top-3 most selling books.
select
    b.*,
    sum(p.quantity) as Total_Sold
from
    books as b
    left join purchases as p on b.ISBN = p.book_id
group by
    b.ISBN
order by
    Total_Sold desc
limit
    3;

--5.author who sold the most books
select
    a.*,
    SUM(p.quantity) as Total_Sold
from
    authors as a
    left join books as b on a.id = b.author_id
    left join purchases as p on b.ISBN = p.book_id
group by
    a.id
order by
    Total_Sold desc
limit
    1;

--6.author who made the most money 
--(money = # books sold * unit price)

select
    a.*,
    SUM(p.quantity * b.unit_price) as Gross_Total
from
    authors as a
    left join books as b on a.id = b.author_id
    left join purchases as p on b.ISBN = p.book_id
group by
    a.id
order by
    Gross_Total desc
limit
    1;


