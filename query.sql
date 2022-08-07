CREATE OR REPLACE VIEW small_transactions AS
SELECT
    COUNT(card),
    card,
    name
FROM 
    transaction_tbl t
INNER JOIN credit_card cc
    USING(card)
INNER JOIN card_holder ch
    ON cc.cardholder_id=ch.id
WHERE
    amount < '2.00'
GROUP BY 
    card,
    cardholder_id,
    ch.name
ORDER BY
    COUNT DESC    
; 


 