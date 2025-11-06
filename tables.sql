CREATE DATABASE dbdesign;
USE dbdesign;

-- DROP TABLE IF EXISTS `Customer`;
-- DROP TABLE IF EXISTS Orders;

CREATE TABLE Customer (
    customer_id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255),
    PRIMARY KEY (customer_id)
) ENGINE=InnoDB;

CREATE TABLE Orders (
    order_id INTEGER NOT NULL AUTO_INCREMENT,
    status VARCHAR(255),
    order_total INTEGER,
    customer_id INTEGER,
    order_date DATE,
    PRIMARY KEY (order_id),
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE OrderItems (
    product_id INTEGER NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(255),
    unit_price INTEGER,
    quantity INTEGER,
    order_id INTEGER,
    PRIMARY KEY (product_id),
    CONSTRAINT fk_order
        FOREIGN KEY (order_id) REFERENCES Orders(order_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;
