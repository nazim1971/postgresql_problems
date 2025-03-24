-- Problem 1 solution
--Here i find-out all out of stock books
SELECT title from books where books.stock = 0


-- Problem 2 solution
-- Here i use sub query to get the max price book
SELECT * from books 
where price = (SELECT max(price) from books)

-- Problem 3 solution
-- Here i use join for add customer with order number
SELECT customers.name , count(*) 
from orders 
join customers on orders.customer_id = customers.id 
GROUP BY customers.name

-- Problem 4 solution
SELECT sum(orders.quantity * books.price)
from orders
join books on orders.book_id = books.id;

-- Problem 5 solution
SELECT customers.name, count(*)
from orders
join customers on orders.customer_id = customers.id
GROUP BY customers.name
HAVING count(*) > 1

-- Problem 6 solution
SELECT round(avg(price), 2) from books

-- Problem 7 solution
--select * from books
UPDATE books 
set  price  = price * 1.10
where published_year <2000


-- Problem 8 solution
--select * from customers

DELETE FROM customers
WHERE id NOT IN (SELECT customer_id FROM orders);

