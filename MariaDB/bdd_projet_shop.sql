CREATE DATABASE projet_shop;

USE projet_shop;

CREATE TABLE categories (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    description TEXT,
    image VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE products(
    id INT NOT NULL AUTO_INCREMENT,
    category_id INT NOT NULL,
    name VARCHAR(20),
    image VARCHAR(100),
    description TEXT,
    price FLOAT,
    quantity SMALLINT,
    attributes VARCHAR(1000),
    PRIMARY KEY(id),
    FOREIGN KEY(category_id) REFERENCES categories(id)
);




CREATE TABLE account(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    firstname VARCHAR(20),
    email VARCHAR(40),
    password VARCHAR(100),
    address VARCHAR,
    is_admin BINARY,
    PRIMARY KEY(id)
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
    quantity SMALLINT,
    FOREIGN KEY(order_id) REFERENCES orders(id),
    FOREIGN KEY(product_id) REFERENCES products(id)
);



/***** Insert values ******/
INSERT INTO categories(name, description, image) 
    VALUES("Smartphones", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, suscipit?", "phones.png"),
        ("Tablettes", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, suscipit?", "ipad.png"),
        ("Ordinateurs", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, suscipit?", "computer.png");

INSERT INTO products(category_id, name, description, image, price, quantity, attributes)
    VALUES(1, "Iphone 13 Mini", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, suscipit?", "iphone-13-mini.png", 729.99, 21, "{}"),
    (1, "Iphone 13 Pro Max", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, suscipit?", "iphone-13-pro-max.png", 1049.99, 15, "{}"),
    (1, "Iphone 13 Pro", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, suscipit?", "iphone-13-pro.png", 849.99, 35, "{}"),
    (1, "Samsung Galaxy S21", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, suscipit?", "samsung-galaxy-s21.png", 929.99, 12, "{}"),
    (1, "Iphone 10", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, suscipit?", "iphone-10.png", 619.99, 6, "{}");
