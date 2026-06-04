INSERT INTO raw.customers (first_name, last_name, email, created_at) VALUES
('Alice', 'Smith', 'alice@example.com', '2024-01-01'),
('Bob', 'Jones', 'bob@example.com', '2024-01-15'),
('Carol', 'White', 'carol@example.com', '2024-02-01'),
('David', 'Brown', 'david@example.com', '2024-02-20'),
('Eve', 'Davis', 'eve@example.com', '2024-03-05');

INSERT INTO raw.products (name, category, price) VALUES
('Wireless Mouse', 'Electronics', 29.99),
('Mechanical Keyboard', 'Electronics', 89.99),
('Desk Lamp', 'Office', 24.99),
('Notebook', 'Stationery', 4.99),
('Coffee Mug', 'Kitchen', 12.99);

INSERT INTO raw.orders (customer_id, status, amount, ordered_at) VALUES
(1, 'completed', 29.99, '2024-01-10'),
(1, 'completed', 89.99, '2024-01-20'),
(2, 'pending', 24.99, '2024-02-01'),
(3, 'completed', 4.99, '2024-02-15'),
(3, 'shipped', 12.99, '2024-03-01'),
(4, 'completed', 119.98, '2024-03-10'),
(5, 'cancelled', 29.99, '2024-03-15');

