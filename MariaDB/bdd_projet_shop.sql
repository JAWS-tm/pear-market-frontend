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




CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    firstname VARCHAR(20),
    email VARCHAR(64), 
    password VARCHAR(100),
    address VARCHAR(255),
    is_admin BOOLEAN,
    PRIMARY KEY(id)
);




CREATE TABLE orders(
    id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    date DATE,
    state TINYINT,
    PRIMARY KEY(id),
    FOREIGN KEY(customer_id) REFERENCES users(id)
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

INSERT INTO projet_shop.products (id, category_id, name, image, description, price, quantity, attributes) VALUES (1, 1, 'Iphone 13 Mini', 'iphone-13-mini.png', 'L''iPhone 13 mini, d''Apple, est son smartphone le plus compact, il est doté d''un écran de 5,4 pouces. Il embarque le processeur Apple A15 Bionic, dispose de 128 Go, 256 Go ou 512 Go de stockage. Il est équipé d''un double module caméra principale (grand-angle et ultra-grand-angle), et est compatible avec la recharge sans-fil Qi et MagSafe..', 729.99, 21, '{}');
INSERT INTO projet_shop.products (id, category_id, name, image, description, price, quantity, attributes) VALUES (2, 1, 'Iphone 13 Pro Max', 'iphone-13-pro-max.png', 'L''iPhone 13 Pro Max, annoncé le 14 septembre 2021, est le modèle haut de gamme et grand format de la 15e itération du smartphone d''Apple. Il est équipé d''un écran OLED de 6,7 pouces 120 Hz, d''un SoC Apple A15 Bionic compatible 5G (NR & Sub-6) et d''un triple capteur photo de 12+12+12 mégapixels (grand-angle, téléobjectif et ultra grand-angle) avec OIS.', 1049.99, 15, '{}');
INSERT INTO projet_shop.products (id, category_id, name, image, description, price, quantity, attributes) VALUES (3, 1, 'Iphone 13 Pro', 'iphone-13-pro.png', 'L''iPhone 13 Pro, annoncé le 14 septembre 2021, est le modèle haut de gamme de la 15e itération du smartphone d''Apple. Il est équipé d''un écran OLED de 6,1 pouces 120 Hz, d''un SoC Apple A15 Bionic compatible 5G (NR & Sub-6) et d''un triple capteur photo de 12+12+12 mégapixels (grand-angle, téléobjectif et ultra grand-angle) avec OIS.', 849.99, 35, '{}');
INSERT INTO projet_shop.products (id, category_id, name, image, description, price, quantity, attributes) VALUES (4, 1, 'Samsung Galaxy S21', 'samsung-galaxy-s21.png', 'Le Samsung Galaxy S21 est un smartphone haut de gamme doté d''un écran de 6,2 pouces au taux de rafraîchissement de 120 Hz. Cet appareil se destine aux personnes qui cherchent un design élégant même si l''on peut déplorer que son dos soit recouvert de plastique plutôt que de verre. Il embarque le processeur Exynos 2100 et arbore un triple module caméra identique à celui de son prédécesseur. ', 929.99, 12, '{}');
INSERT INTO projet_shop.products (id, category_id, name, image, description, price, quantity, attributes) VALUES (5, 1, 'Iphone 10', 'iphone-10.png', 'L’Apple iPhone X affiche, pour la première fois de son histoire, un écran OLED sans bords de 5,8 pouces. Il embarque également le nouveau processeur A11 Bionic ainsi qu''un double module caméra principal amélioré de 12 mégapixels. Le capteur d''empreintes (Touch ID) fait place à de la reconnaissance faciale (Face ID).
', 619.99, 6, '{}');
