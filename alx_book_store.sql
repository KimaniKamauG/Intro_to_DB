CREATE DATABASE alx_book_store;
-- Creates a database named alx_book_store.

use database alx_book_store;
-- Uses the database alx_book_store.

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    -- Stores information about books available in the bookstore.
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
) ;

CREATE TABLE AUTHORS (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL,
    -- Stores information about authors.
) ;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215),
    email VARCHAR(215) UNIQUE,
    address TEXT,
    -- Stores information about customers.
) ;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    -- Stores information about orders placed by customers.
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
) ;

CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    -- Stores information about the books included in each order.
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
) ;
