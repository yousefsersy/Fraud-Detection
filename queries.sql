SELECT * FROM card_holder;
SELECT * FROM credit_card;
SELECT * FROM merchant;
SELECT * FROM merchant_category;
SELECT * FROM transaction;

-- Join the tables card_holder, credit_card, transaction
SELECT *
FROM card_holder as a
INNER JOIN credit_card as b ON a.id = b.id_card_holder
INNER JOIN transaction as c ON b.card = c.card;

--Create view of grouped transactions per cardholder
CREATE VIEW grouped_transactions AS
SELECT name, COUNT(*) as transaction_count
FROM card_holder as a
INNER JOIN credit_card as b ON a.id = b.id_card_holder
INNER JOIN transaction as c ON b.card = c.card
GROUP BY name
ORDER BY name ASC;
--
--View query result
SELECT * FROM grouped_transactions
-- View total transaction count
SELECT COUNT(*) FROM transaction
--

--Create view of transactions which are less than $2.00
CREATE VIEW less_than_2 AS
Select COUNT(amount)
FROM transaction
WHERE amount < 2;

SELECT * FROM less_than_2;
--Result = 350 transactions less than $2

--Create view of top 100 highest transactions between 7:00am and 9:00am
CREATE VIEW top_100_7am_to_9am AS
SELECT *
FROM transaction as a
WHERE date_part ('hour', date) >= 7 and date_part ('hour', date) < 9
ORDER by amount DESC
LIMIT 100;

-- View transactions made on 9 am and later
SELECT *
FROM transaction as a
WHERE date_part ('hour', date) >= 9
ORDER by amount DESC;


--Define table columns, Associate keys for table joins
--Assign condition for transactions at less than $2.00
--Group table by name
--Order by decending order with limit of 5
CREATE VIEW top_5_merchants_fraud_risk AS
SELECT m.name AS merchant, mc.name AS category,
	COUNT(t.amount) AS less_than_2
FROM transaction AS t
JOIN merchant as m ON m.id = t.id_merchant
JOIN merchant_category AS mc ON mc.id = m.id_merchant_category
WHERE t.amount < 2
GROUP BY m.name, mc.name
ORDER BY less_than_2 DESC
LIMIT 5;

SELECT * FROM top_5_merchants_fraud_risk