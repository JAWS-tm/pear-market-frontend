

CREATE DATABASE projet_shop;

USE projet_shop;

CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    description TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE account(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    firstname VARCHAR(20),
    email VARCHAR(40),
    password VARCHAR(30),
    address VARCHAR,
    is_admin BINARY,
    PRIMARY KEY(id)
);

CREATE TABLE products(
    id INT NOT NULL AUTO_INCREMENT,
    category_id INT NOT NULL,
    name VARCHAR(20),
    image VARCHAR(100),
    description TEXT,
    price FLOAT,
    amount SMALLINT,
    attributes VARCHAR(1000),
    PRIMARY KEY(id),
    FOREIGN KEY(category_id) REFERENCES categories(id)
);

CREATE TABLE orders(
    id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    date DATE,
    state TINYINT,
    PRIMARY KEY(id),
    FOREIGN KEY(customer_id) REFERENCES account(id)
);


CREATE TABLE content-orders(
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    amount SMALLINT,
    FOREIGN KEY(order_id) REFERENCES orders(id),
    FOREIGN KEY(product_id) REFERENCES products(id)
    );