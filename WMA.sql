CREATE TABLE stocks (
    stock_id VARCHAR(50) PRIMARY KEY,
    quantity INT NOT NULL,
    price_per_unit DECIMAL(10, 2) NOT NULL,
    expiry_date DATE NOT NULL
);
CREATE TABLE suppliers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    industry_id VARCHAR(50) NOT NULL,
    stock_id VARCHAR(50) NOT NULL,
    address TEXT,
    quantity INT,
    FOREIGN KEY (stock_id) REFERENCES stocks(stock_id)
);
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    customer_id VARCHAR(50) NOT NULL,
    address TEXT NOT NULL
);
CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    customer_id VARCHAR(50) NOT NULL,
    stock_id VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    transaction_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (stock_id) REFERENCES stocks(stock_id)
);
