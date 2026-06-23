-- eBay E-Commerce Sales Analysis
-- File 2: Sample Data Insertion
-- Author: Monika Anjali K

USE ebay_sales;

-- Insert Products
INSERT INTO products VALUES
(1, 'iPhone 14', 'Electronics'),
(2, 'Samsung TV', 'Electronics'),
(3, 'Nike Shoes', 'Footwear'),
(4, 'Adidas Sneakers', 'Footwear'),
(5, 'Levi Jeans', 'Clothing'),
(6, 'H&M T-Shirt', 'Clothing'),
(7, 'Dining Table', 'Furniture'),
(8, 'Office Chair', 'Furniture'),
(9, 'Harry Potter Book', 'Books'),
(10, 'Python Programming Book', 'Books'),
(11, 'Face Wash', 'Beauty'),
(12, 'Lipstick', 'Beauty'),
(13, 'Dumbbells', 'Sports'),
(14, 'Yoga Mat', 'Sports'),
(15, 'Toy Car', 'Toys'),
(16, 'Lego Set', 'Toys'),
(17, 'Mixer Grinder', 'Appliances'),
(18, 'Microwave', 'Appliances'),
(19, 'Garden Tools', 'Garden'),
(20, 'Plant Pots', 'Garden'),
(21, 'Laptop Bag', 'Accessories'),
(22, 'Phone Case', 'Accessories');

-- Insert Orders
INSERT INTO orders VALUES
(1,  1,  '2024-01-15', 2, 800.00, 1600.00),
(2,  3,  '2024-01-20', 3, 120.00, 360.00),
(3,  5,  '2024-02-10', 5, 60.00,  300.00),
(4,  9,  '2024-02-18', 4, 20.00,  80.00),
(5,  11, '2024-03-05', 6, 15.00,  90.00),
(6,  13, '2024-03-22', 2, 50.00,  100.00),
(7,  7,  '2024-04-11', 1, 400.00, 400.00),
(8,  15, '2024-04-25', 7, 30.00,  210.00),
(9,  17, '2024-05-09', 3, 200.00, 600.00),
(10, 19, '2024-05-30', 4, 45.00,  180.00),
(11, 21, '2024-06-14', 5, 35.00,  175.00),
(12, 2,  '2024-06-28', 2, 600.00, 1200.00),
(13, 4,  '2024-07-03', 4, 110.00, 440.00),
(14, 6,  '2024-07-19', 6, 25.00,  150.00),
(15, 10, '2024-08-07', 3, 30.00,  90.00),
(16, 12, '2024-08-21', 8, 12.00,  96.00),
(17, 14, '2024-09-10', 5, 40.00,  200.00),
(18, 16, '2024-09-25', 3, 80.00,  240.00),
(19, 18, '2024-10-04', 2, 250.00, 500.00),
(20, 20, '2024-10-18', 6, 20.00,  120.00),
(21, 1,  '2024-11-05', 5, 800.00, 4000.00),
(22, 2,  '2024-11-11', 4, 600.00, 2400.00),
(23, 3,  '2024-11-28', 8, 120.00, 960.00),
(24, 1,  '2024-12-05', 6, 800.00, 4800.00),
(25, 2,  '2024-12-12', 5, 600.00, 3000.00),
(26, 4,  '2024-12-20', 7, 110.00, 770.00),
(27, 17, '2024-12-22', 4, 200.00, 800.00),
(28, 22, '2024-10-30', 10, 10.00, 100.00),
(29, 8,  '2024-11-15', 2, 300.00, 600.00),
(30, 6,  '2024-12-28', 9, 25.00,  225.00);

-- Insert Returns
INSERT INTO returns VALUES
(1,  3,  '2024-01-25', 'Wrong size'),
(2,  5,  '2024-02-15', 'Wrong size'),
(3,  14, '2024-07-25', 'Wrong size'),
(4,  4,  '2024-04-30', 'Damaged product'),
(5,  8,  '2024-04-30', 'Damaged product'),
(6,  10, '2024-08-10', 'Not as described'),
(7,  16, '2024-09-30', 'Damaged product'),
(8,  20, '2024-10-25', 'Not as described'),
(9,  28, '2024-11-05', 'Cheap quality'),
(10, 30, '2025-01-03', 'Wrong size');