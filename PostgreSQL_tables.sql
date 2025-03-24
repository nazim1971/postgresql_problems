-- Active: 1742359864732@@127.0.0.1@5432@bookstore_db

--Book table
create Table books (
    id SERIAL PRIMARY key,
    title VARCHAR(100) NOT null,
    author VARCHAR(50) not NULL,
    price DECIMAL (10,2) CHECK (price >= 0) NOT NULL,
    stock INT NOT NULL, 
    published_year INT CHECK (published_year BETWEEN 1000 AND 9999)
)


INSERT INTO books (title, author, price, stock, published_year)  
VALUES  
('The Pragmatic Programmer', 'Andrew Hunt', 40.00, 10, 1999),  
('Clean Code', 'Robert C. Martin', 35.50, 15, 2008),  
('Design Patterns', 'Erich Gamma', 50.00, 0, 1994),  
('You Don’t Know JS', 'Kyle Simpson', 25.99, 0, 2015),  
('Eloquent JavaScript', 'Marijn Haverbeke', 30.00, 20, 2018);


--Customer table
CREATE Table customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) not NULL,
    email VARCHAR(50) UNIQUE not null,
    joined_date date DEFAULT CURRENT_DATE
)

INSERT INTO customers (name, email, joined_date)  
VALUES  
('Alice', 'alice@gmail.com', '2023-01-10'),  
('Bob', 'bob@gmail.com', '2023-02-15'),  
('Charlie', 'charlie@gmail.com', '2023-03-20'),  
('David', 'david@gmail.com', '2023-04-25'),  
('Emma', 'emma@gmail.com', '2023-05-30');

-- Order table 
CREATE table orders (
     id SERIAL PRIMARY KEY,
     customer_id int REFERENCES customers(id) ON DELETE CASCADE,
     book_id int REFERENCES books(id) ON DELETE CASCADE,
     quantity int CHECK( quantity > 0) not NULL,
     order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

insert INTO orders (customer_id, book_id, quantity)
VALUES
(1,2,5),
(1,1,2),
(4,2,3),
(3,1,2),
(5,3,5),
(5,5,2)


-- SELECT * from customers

-- SELECT * from books

-- SELECT * from orders
