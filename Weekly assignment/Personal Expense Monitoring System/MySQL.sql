CREATE DATABASE ExpenseTracker;
USE ExpenseTracker;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50)
);

CREATE TABLE expenses (
    expense_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    category_id INT,
    amount DECIMAL(10,2),
    expense_date DATE,
    description VARCHAR(200),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(category_id) REFERENCES categories(category_id)
);

INSERT INTO users(user_name,email)
VALUES
('User1','user1@gmail.com'),
('User2','user2@gmail.com');

INSERT INTO categories(category_name)
VALUES
('Food'),
('Transport'),
('Shopping'),
('Bills');

INSERT INTO expenses
(user_id,category_id,amount,expense_date,description)
VALUES
(1,1,450.00,'2026-06-01','Restaurant'),
(1,2,200.00,'2026-06-02','Bus Pass'),
(2,3,1500.00,'2026-06-03','Clothing'),
(1,4,800.00,'2026-06-05','Electricity Bill');

INSERT INTO expenses
(user_id,category_id,amount,expense_date,description)
VALUES
(2,1,350.00,'2026-06-06','Lunch');

SELECT * FROM expenses;

UPDATE expenses
SET amount = 500
WHERE expense_id = 1;

DELETE FROM expenses
WHERE expense_id = 2;

DELIMITER $$

CREATE PROCEDURE MonthlyCategoryExpense(
    IN p_month INT,
    IN p_year INT
)
BEGIN

SELECT
    c.category_name,
    SUM(e.amount) AS total_expense

FROM expenses e
JOIN categories c
ON e.category_id = c.category_id

WHERE MONTH(e.expense_date)=p_month
AND YEAR(e.expense_date)=p_year

GROUP BY c.category_name;

END $$

DELIMITER ;

CALL MonthlyCategoryExpense(6,2026);
