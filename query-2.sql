CREATE OR REPLACE VIEW early_transactions AS
SELECT
    COUNT (card),
    card,
    name
FROM 
    transaction_tbl t
INNER JOIN credit_card cc
    USING(card)
INNER JOIN card_holder ch
    ON cc.cardholder_id=ch.id       
WHERE
--     amount < '2.00' AND
    CAST(trns_date AS time) BETWEEN '07:00:00' AND '09:00:00' 
GROUP BY
    card,
    name
ORDER BY
    COUNT DESC    
;    
