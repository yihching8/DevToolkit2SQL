create table users (
    user_id INT,
    name VARCHAR (50),
    dob DATE,
    mobile INT,
    PRIMARY KEY (user_id)
);

show tables;

describe users;

select
    *
from
    users;

INSERT INTO
    users (user_id, name, dob, mobile)
values
    ('1', 'Dixant', '2000-02-20', '89898989'),
    ('2', 'Mittal', '2020-02-02', '99889988');

select
    *
from
    users1;

-- INSERT DATA IN TABLE
INSERT INTO
    users1 (user_id, name, dob, mobile_number)
values
    ('1', 'Dixant', '2000-02-20', '89898989'),
    ('2', 'Mittal', '2020-02-02', '99889988');

DELETE FROM
    users1
where
    user_id = 2;

select
    *
from
    users1;

delete from
    users1;



select
    *
from
    users1;

INSERT INTO
    users1 (user_id, name, dob, mobile_number)
values
    ('1', 'Dixant', '2000-02-20', '89898989'),
    ('2', 'Mittal', '2020-02-02', '99889988');

--updating data in table
UPDATE
    users1
SET
    name = "MITTAL",
    mobile_number = "9999999"
where
    user_id = 2;

select
    *
from
    users1;


Create
Retrieve
Update
Delete

-- modify a table
alter table users
drop column dob; 

select * from users;

alter table users
add dob date; 

describe users

alter table users
modify column name varchar(100); 
 
describe users1; 

ALTER TABLE your_table_name RENAME COLUMN original_column_name TO new_column_name;


--delete database
drop database yih; 

--delete table in database
drop table users1; 




