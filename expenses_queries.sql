-- Create and use the database
CREATE DATABASE expense_tracker;
USE expense_tracker;

-- Create the expenses table
CREATE TABLE expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    expense_date DATE,
    category VARCHAR(50),
    amount DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO expenses (expense_date, category, amount) VALUES
('2026-08-01', 'Rent', 15000),
('2026-08-03', 'Groceries', 2500),
('2026-08-05', 'Transport', 800),
('2026-08-10', 'Groceries', 1800),
('2026-08-12', 'Entertainment', 1200),
('2026-08-15', 'Rent', 15000),
('2026-08-18', 'Transport', 600),
('2026-08-20', 'Groceries', 2100),
('2026-08-25', 'Entertainment', 900),
('2026-08-28', 'Utilities', 3000);

-- Query examples

-- Find expenses over 2000
SELECT * FROM expenses WHERE amount > 2000;

-- Sort by highest spending first
SELECT * FROM expenses ORDER BY amount DESC;

-- Total spending by category
SELECT category, SUM(amount) AS total_spent
FROM expenses
GROUP BY category
ORDER BY total_spent DESC;