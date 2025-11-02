create database Restaurtant_Management;
use Restaurtant_Management;

create table Customers(Cust_ID int primary key,
    C_Name varchar(40),
    email_id varchar(40),
	Phone_No varchar(20),
    Address varchar(50));

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    s_name VARCHAR(100),
    role VARCHAR(50),
    phone_no VARCHAR(15),
    salary DECIMAL(10,2)
);

CREATE TABLE Menu (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    Cust_ID INT,
    staff_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (Cust_ID) REFERENCES Customers(Cust_ID),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    item_id INT,
    quantity INT,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES Menu(item_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(50),
    amount_paid DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Customers (Cust_id, C_Name, phone_no, email_id, address) VALUES
(1, 'Aarav Mehta', '9876500001', 'aarav1@example.com', 'Chennai'),
(2, 'Ananya Singh', '9876500002', 'ananya2@example.com', 'Bangalore'),
(3, 'Rohan Das', '9876500003', 'rohan3@example.com', 'Mumbai'),
(4, 'Ishita Nair', '9876500004', 'ishita4@example.com', 'Delhi'),
(5, 'Karan Patel', '9876500005', 'karan5@example.com', 'Hyderabad'),
(6, 'Sneha Rao', '9876500006', 'sneha6@example.com', 'Chennai'),
(7, 'Rahul Gupta', '9876500007', 'rahul7@example.com', 'Pune'),
(8, 'Neha Sharma', '9876500008', 'neha8@example.com', 'Kolkata'),
(9, 'Aditya Roy', '9876500009', 'aditya9@example.com', 'Jaipur'),
(10, 'Divya Iyer', '9876500010', 'divya10@example.com', 'Ahmedabad'),
(11, 'Vikram Jain', '9876500011', 'vikram11@example.com', 'Lucknow'),
(12, 'Priya Menon', '9876500012', 'priya12@example.com', 'Chennai'),
(13, 'Abhishek Yadav', '9876500013', 'abhishek13@example.com', 'Pune'),
(14, 'Kavya Pillai', '9876500014', 'kavya14@example.com', 'Hyderabad'),
(15, 'Sanjay Kumar', '9876500015', 'sanjay15@example.com', 'Bangalore'),
(16, 'Meera Joshi', '9876500016', 'meera16@example.com', 'Chennai'),
(17, 'Rajesh Varma', '9876500017', 'rajesh17@example.com', 'Delhi'),
(18, 'Anjali Reddy', '9876500018', 'anjali18@example.com', 'Bangalore'),
(19, 'Tanishq Verma', '9876500019', 'tanishq19@example.com', 'Pune'),
(20, 'Ritika Ghosh', '9876500020', 'ritika20@example.com', 'Kolkata'),
(21, 'Nikhil Sinha', '9876500021', 'nikhil21@example.com', 'Hyderabad'),
(22, 'Sonal Jain', '9876500022', 'sonal22@example.com', 'Jaipur'),
(23, 'Deepak Malhotra', '9876500023', 'deepak23@example.com', 'Delhi'),
(24, 'Reema Dey', '9876500024', 'reema24@example.com', 'Kolkata'),
(25, 'Vishal Kapoor', '9876500025', 'vishal25@example.com', 'Mumbai'),
(26, 'Simran Kaur', '9876500026', 'simran26@example.com', 'Chennai'),
(27, 'Amit Trivedi', '9876500027', 'amit27@example.com', 'Ahmedabad'),
(28, 'Shruti Bansal', '9876500028', 'shruti28@example.com', 'Bangalore'),
(29, 'Parth Shah', '9876500029', 'parth29@example.com', 'Surat'),
(30, 'Dhruv Tiwari', '9876500030', 'dhruv30@example.com', 'Delhi'),
(31, 'Lakshmi Krishnan', '9876500031', 'lakshmi31@example.com', 'Chennai'),
(32, 'Manish Goyal', '9876500032', 'manish32@example.com', 'Hyderabad'),
(33, 'Ayesha Khan', '9876500033', 'ayesha33@example.com', 'Pune'),
(34, 'Harshit Jain', '9876500034', 'harshit34@example.com', 'Jaipur'),
(35, 'Riya Sen', '9876500035', 'riya35@example.com', 'Kolkata'),
(36, 'Yash Agarwal', '9876500036', 'yash36@example.com', 'Lucknow'),
(37, 'Tanvi Desai', '9876500037', 'tanvi37@example.com', 'Ahmedabad'),
(38, 'Naveen Reddy', '9876500038', 'naveen38@example.com', 'Chennai'),
(39, 'Bhavya Patel', '9876500039', 'bhavya39@example.com', 'Surat'),
(40, 'Pooja Nanda', '9876500040', 'pooja40@example.com', 'Delhi'),
(41, 'Kartik Iyer', '9876500041', 'kartik41@example.com', 'Bangalore'),
(42, 'Diya Sharma', '9876500042', 'diya42@example.com', 'Hyderabad'),
(43, 'Sameer Khan', '9876500043', 'sameer43@example.com', 'Chennai'),
(44, 'Aditi Menon', '9876500044', 'aditi44@example.com', 'Mumbai'),
(45, 'Gaurav Dutta', '9876500045', 'gaurav45@example.com', 'Kolkata'),
(46, 'Mihir Joshi', '9876500046', 'mihir46@example.com', 'Surat'),
(47, 'Snehal Pawar', '9876500047', 'snehal47@example.com', 'Pune'),
(48, 'Rachit Bansal', '9876500048', 'rachit48@example.com', 'Delhi'),
(49, 'Tara Ramesh', '9876500049', 'tara49@example.com', 'Chennai'),
(50, 'Siddharth Pillai', '9876500050', 'siddharth50@example.com', 'Hyderabad');

INSERT INTO Staff (staff_id, S_name, role, phone_no, salary) VALUES
(1, 'Ramesh Kumar', 'Manager', '9123456701', 40000),
(2, 'Sita Devi', 'Chef', '9123456702', 35000),
(3, 'Ravi Patel', 'Waiter', '9123456703', 20000),
(4, 'Priya Singh', 'Cashier', '9123456704', 22000),
(5, 'Arun Nair', 'Chef', '9123456705', 30000),
(6, 'Neelam Yadav', 'Waiter', '9123456706', 18000),
(7, 'Vivek Das', 'Cleaner', '9123456707', 15000),
(8, 'Anu Sharma', 'Chef', '9123456708', 28000),
(9, 'Raj Kumar', 'Waiter', '9123456709', 19000),
(10, 'Kiran Reddy', 'Cashier', '9123456710', 25000);

INSERT INTO Menu (item_id, item_name, category, price) VALUES
(1, 'Margherita Pizza', 'Main Course', 299.00),
(2, 'Veg Burger', 'Main Course', 149.00),
(3, 'Chicken Biryani', 'Main Course', 249.00),
(4, 'Paneer Butter Masala', 'Main Course', 199.00),
(5, 'Pasta Alfredo', 'Main Course', 229.00),
(6, 'French Fries', 'Snack', 99.00),
(7, 'Cold Coffee', 'Beverage', 89.00),
(8, 'Coke', 'Beverage', 59.00),
(9, 'Brownie', 'Dessert', 99.00),
(10, 'Ice Cream Sundae', 'Dessert', 129.00),
(11, 'Garlic Bread', 'Starter', 129.00),
(12, 'Manchurian', 'Starter', 159.00),
(13, 'Noodles', 'Main Course', 179.00),
(14, 'Lemonade', 'Beverage', 69.00),
(15, 'Tomato Soup', 'Starter', 119.00),
(16, 'Chicken Sandwich', 'Snack', 159.00),
(17, 'Veg Wrap', 'Snack', 139.00),
(18, 'Tandoori Roti', 'Bread', 25.00),
(19, 'Butter Naan', 'Bread', 40.00),
(20, 'Gulab Jamun', 'Dessert', 70.00);

INSERT INTO Orders (order_id, Cust_ID, staff_id, order_date, total_amount) VALUES
(1, 1, 2, '2025-10-01 13:50:00', 560.00),
(2, 3, 1, '2025-10-01 14:10:00', 420.50),
(3, 2, 4, '2025-10-02 12:30:00', 789.00),
(4, 4, 3, '2025-10-02 18:00:00', 310.25),
(5, 5, 2, '2025-10-03 11:45:00', 655.00),
(6, 1, 1, '2025-10-03 20:10:00', 499.99),
(7, 3, 2, '2025-10-04 15:10:00', 920.00),
(8, 2, 5, '2025-10-04 16:20:00', 370.00),
(9, 4, 1, '2025-10-05 17:50:00', 285.50),
(10, 5, 3, '2025-10-05 19:30:00', 610.00),
(11, 1, 4, '2025-10-06 13:00:00', 875.00),
(12, 3, 2, '2025-10-06 14:45:00', 455.75),
(13, 2, 3, '2025-10-07 11:30:00', 295.00),
(14, 4, 1, '2025-10-07 12:45:00', 735.25),
(15, 5, 5, '2025-10-08 15:30:00', 820.00),
(16, 1, 2, '2025-10-08 19:10:00', 640.50),
(17, 2, 4, '2025-10-09 12:15:00', 510.00),
(18, 3, 1, '2025-10-09 16:55:00', 935.75),
(19, 4, 3, '2025-10-10 14:35:00', 720.00),
(20, 5, 2, '2025-10-10 20:00:00', 580.25);

INSERT INTO Order_Details (order_detail_id, order_id, item_id, quantity, subtotal) VALUES
(1, 1, 2, 2, 320.00),
(2, 1, 5, 1, 240.00),
(3, 2, 3, 2, 420.50),
(4, 3, 1, 3, 789.00),
(5, 4, 6, 1, 310.25),
(6, 5, 4, 2, 655.00),
(7, 6, 2, 1, 250.00),
(8, 6, 8, 1, 249.99),
(9, 7, 7, 2, 920.00),
(10, 8, 9, 2, 370.00),
(11, 9, 5, 1, 285.50),
(12, 10, 3, 2, 610.00),
(13, 11, 1, 2, 875.00),
(14, 12, 6, 1, 455.75),
(15, 13, 8, 1, 295.00),
(16, 14, 9, 3, 735.25),
(17, 15, 7, 2, 820.00),
(18, 16, 4, 1, 640.50),
(19, 17, 2, 2, 510.00),
(20, 18, 3, 3, 935.75);

INSERT INTO Payments (payment_id, order_id, payment_date, payment_method, amount_paid) VALUES
(1, 1, '2025-10-01 14:00:00', 'Cash', 560.00),
(2, 2, '2025-10-01 14:20:00', 'Credit Card', 420.50),
(3, 3, '2025-10-02 12:45:00', 'UPI', 789.00),
(4, 4, '2025-10-02 18:15:00', 'Cash', 310.25),
(5, 5, '2025-10-03 12:00:00', 'Debit Card', 655.00),
(6, 6, '2025-10-03 20:25:00', 'UPI', 499.99),
(7, 7, '2025-10-04 15:20:00', 'Credit Card', 920.00),
(8, 8, '2025-10-04 16:35:00', 'Cash', 370.00),
(9, 9, '2025-10-05 18:00:00', 'UPI', 285.50),
(10, 10, '2025-10-05 19:45:00', 'Credit Card', 610.00),
(11, 11, '2025-10-06 13:15:00', 'Debit Card', 875.00),
(12, 12, '2025-10-06 15:00:00', 'Cash', 455.75),
(13, 13, '2025-10-07 11:40:00', 'UPI', 295.00),
(14, 14, '2025-10-07 13:00:00', 'Credit Card', 735.25),
(15, 15, '2025-10-08 15:45:00', 'Debit Card', 820.00),
(16, 16, '2025-10-08 19:25:00', 'UPI', 640.50),
(17, 17, '2025-10-09 12:30:00', 'Cash', 510.00),
(18, 18, '2025-10-09 17:10:00', 'Credit Card', 935.75),
(19, 19, '2025-10-10 14:50:00', 'UPI', 720.00),
(20, 20, '2025-10-10 20:15:00', 'Debit Card', 580.25);

SELECT * FROM Customers;
SELECT * FROM Staff;
SELECT * FROM Menu;
SELECT * FROM Orders;
SELECT * FROM Order_Details;
SELECT * FROM Payments;

SELECT item_name, category, price FROM Menu;

SELECT * FROM Orders WHERE Cust_ID = 1;

SELECT COUNT(*) AS total_customers_chennai FROM Customers WHERE address = 'Chennai';

SELECT item_name, price FROM Menu WHERE price > 200;

SELECT * FROM Orders WHERE staff_id = 2;

SELECT payment_method, SUM(amount_paid) AS total_collected
FROM Payments
GROUP BY payment_method;

SELECT MAX(amount_paid) AS highest_payment FROM Payments;
SELECT MIN(amount_paid) AS lowest_payment FROM Payments;
SELECT COUNT(*) AS total_orders FROM Orders;

SELECT M.item_name, OD.quantity, OD.subtotal
FROM Order_Details OD
JOIN Menu M ON OD.item_id = M.item_id
WHERE OD.order_id = 1;

SELECT DISTINCT C.C_Name
FROM Customers C
JOIN Orders O ON C.Cust_ID = O.customer_id
JOIN Payments P ON O.order_id = P.order_id
WHERE P.payment_method = 'Credit Card';

SELECT SUM(amount_paid) AS total_revenue FROM Payments;
SELECT AVG(total_amount) AS avg_order_value FROM Orders;

SELECT C.C_Name, O.order_id, P.payment_method
FROM Customers C
JOIN Orders O ON C.Cust_ID = O.customer_id
JOIN Payments P ON O.order_id = P.order_id;

SELECT DISTINCT M.item_name
FROM Order_Details OD
JOIN Menu M ON OD.item_id = M.item_id
WHERE M.category = 'Dessert';

SELECT S.s_name, SUM(O.total_amount) AS total_sales
FROM Orders O
JOIN Staff S ON O.staff_id = S.staff_id
GROUP BY S.s_name;

SELECT * FROM Orders WHERE total_amount > 700;

SELECT customer_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

SELECT O.order_id, O.order_date, P.payment_date
FROM Orders O
JOIN Payments P ON O.order_id = P.order_id;

SELECT item_name, price FROM Menu WHERE price < 100;
SELECT s_name, role, salary FROM Staff WHERE salary > 25000;

SELECT DATE(order_date) AS order_day, SUM(total_amount) AS total_sales
FROM Orders
GROUP BY DATE(order_date);

SELECT C.C_Name, SUM(P.amount_paid) AS total_spent
FROM Customers C
JOIN Orders O ON C.Cust_ID = O.customer_id
JOIN Payments P ON O.order_id = P.order_id
GROUP BY C.C_Name;

SELECT M.item_name, SUM(OD.quantity) AS total_quantity
FROM Order_Details OD
JOIN Menu M ON OD.item_id = M.item_id
GROUP BY M.item_name
ORDER BY total_quantity DESC;

SELECT s_name
FROM Staff
WHERE staff_id NOT IN (SELECT staff_id FROM Orders);

SELECT O.order_id, O.total_amount, P.payment_method, P.amount_paid
FROM Orders O
JOIN Payments P ON O.order_id = P.order_id;

DELIMITER $$

CREATE TRIGGER UpdateTableStatus
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
    UPDATE Tables
    SET Status = 'Occupied'
    WHERE Table_ID = NEW.Table_ID;
END $$

DELIMITER ;





