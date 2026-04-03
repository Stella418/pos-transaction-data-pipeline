-- Analysis
-- Total transactions at the specific timestamp(2026-04-02 12:53:11.0000000)
SELECT COUNT(*) AS total_transactions
FROM Transactions;

-- Total Count by status
SELECT COUNT(*) AS total_success
FROM Transactions
WHERE status = 'Success';

SELECT COUNT(*) AS total_pending
FROM Transactions
WHERE status = 'Pending';

SELECT COUNT(*) AS total_failed
FROM Transactions
WHERE status = 'Failed';

-- Total count by location
SELECT COUNT(*) AS total_transactions, Location
FROM Transactions
GROUP BY Location
ORDER BY total_transactions DESC;

-- Total failed transactions by location
SELECT COUNT(*) AS total_failed, Location
FROM Transactions
WHERE status = 'Failed'
GROUP BY Location
ORDER BY total_failed DESC;

-- Total count by Device type
SELECT COUNT(*) AS POS
FROM Transactions
WHERE Device_Type = 'POS';

SELECT COUNT(*) AS Smartphone
FROM Transactions
WHERE Device_Type = 'Smartphone';

-- Total failed transactions by device type
SELECT COUNT(*) AS total_failed, Device_Type
FROM Transactions
WHERE status = 'Failed'
GROUP BY Device_Type;

-- Top merchants
SELECT TOP 5 merchant_id, ROUND(SUM(amount), 2) AS total_sales
FROM Transactions
GROUP BY merchant_id
ORDER BY total_sales DESC;