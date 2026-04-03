-- Data quality checks
-- Checking for missing fields
SELECT *
FROM Transactions
WHERE Transsaction_ID IS NULL 
   OR Merchant_ID IS NULL
   OR Amount IS NULL
   OR Location IS NULL
   OR Status IS NULL
   OR Device_Type IS NULL
   OR Timestamp IS NULL;

-- To check for duplicate Transaction_IDs
SELECT COUNT(*), Transsaction_ID
FROM Transactions
GROUP BY Transsaction_ID
HAVING COUNT(*) > 1;

-- To check for invalid status values
SELECT DISTINCT Status 
FROM Transactions
WHERE Status NOT IN ('Success', 'Failed', 'Pending');

-- Checking for negative or zero amount
SELECT *
FROM Transactions
WHERE Amount <= 0;



