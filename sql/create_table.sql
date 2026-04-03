CREATE TABLE Transactions (
    Transsaction_id VARCHAR(50) PRIMARY KEY,
    Merchant_id INT,
    Amount DECIMAL(10,2),
    Location VARCHAR(50),
    Status VARCHAR(10),
    Device_type VARCHAR(50)
    Timestamp DATETIME,
);