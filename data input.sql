INSERT INTO Customer (name, address) VALUES
('Alice Johnson', '123 Maple Street'),
('Bob Smith', '456 Oak Avenue'),
('Carol Lee', '789 Pine Road'),
('David Brown', '321 Elm Street'),
('Eva Green', '654 Cedar Lane');


INSERT INTO Orders (status, order_total, customer_id, order_date) VALUES
('Pending', 150, 1, '2025-11-01'),
('Shipped', 300, 2, '2025-11-02'),
('Delivered', 120, 1, '2025-11-03'),
('Cancelled', 200, 3, '2025-11-04'),
('Pending', 450, 4, '2025-11-05');


INSERT INTO OrderItems (product_name, unit_price, quantity, order_id) VALUES
('Laptop', 1000, 1, 1),
('Mouse', 50, 1, 1),
('Keyboard', 70, 2, 2),
('Monitor', 150, 2, 2),
('USB Cable', 10, 4, 3),
('Headphones', 60, 2, 4),
('Chair', 200, 1, 5),
('Desk Lamp', 50, 5, 5);
