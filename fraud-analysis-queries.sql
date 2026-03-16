DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
  customer_id INT,
  amount DECIMAL(10,2),
  transaction_hour INT,
  device_type VARCHAR(20),
  city VARCHAR(50),
  transaction_type VARCHAR(20),
  customer_tenure_days INT,
  is_high_amount BOOLEAN,
  is_fraud BOOLEAN
);
SELECT 
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS total_fraud_cases,
    ROUND(SUM(is_fraud)/COUNT(*)*100,4) AS fraud_rate_percent,
    ROUND(SUM(CASE WHEN is_fraud = 1 THEN amount ELSE 0 END),2) AS total_fraud_loss
FROM transactions;
SELECT 
    device_type,
    COUNT(*) AS total_txn,
    SUM(is_fraud) AS fraud_txn,
    ROUND(SUM(is_fraud)/COUNT(*)*100,4) AS fraud_rate_percent
FROM transactions
GROUP BY device_type
ORDER BY fraud_rate_percent DESC;
SELECT 
    transaction_hour,
    COUNT(*) AS total_txn,
    SUM(is_fraud) AS fraud_txn,
    ROUND(SUM(is_fraud)/COUNT(*)*100,4) AS fraud_rate_percent
FROM transactions
GROUP BY transaction_hour
ORDER BY fraud_rate_percent DESC;
WITH customer_fraud AS (
    SELECT 
        customer_id,
        COUNT(*) AS total_txn,
        SUM(is_fraud) AS fraud_txn,
        SUM(CASE WHEN is_fraud = 1 THEN amount ELSE 0 END) AS fraud_loss
    FROM transactions
    GROUP BY customer_id
)

SELECT *,
       ROUND(fraud_txn/total_txn,4) AS fraud_rate,
       RANK() OVER (ORDER BY fraud_txn DESC) AS risk_rank
FROM customer_fraud
ORDER BY risk_rank
LIMIT 20;
SELECT 
    CASE 
        WHEN amount < 1000 THEN 'Low'
        WHEN amount BETWEEN 1000 AND 10000 THEN 'Medium'
        ELSE 'High'
    END AS amount_bucket,
    SUM(is_fraud) AS fraud_cases,
    ROUND(SUM(is_fraud)/COUNT(*)*100,4) AS fraud_rate
FROM transactions
GROUP BY amount_bucket
ORDER BY fraud_rate DESC;