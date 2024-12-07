-- database: ex1.db
Create table If Not Exists Person (Id int, Email varchar(255));
insert into Person (id, email) 
values ('1', 'john@example.com'),
       ('2', 'bob@example.com'),
       ('3', 'john@example.com');
-- Write a solution to delete all duplicate emails, 
-- keeping only one unique email with the smallest id.
delete from Person;
DELETE FROM Person
    WHERE id NOT IN 
        (SELECT MIN(id) AS id
        FROM (SELECT * FROM person) AS p1
        GROUP BY email)