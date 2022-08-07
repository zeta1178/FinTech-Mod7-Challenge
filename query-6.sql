SELECT
--     COUNT (card),
    trns_date,
    amount,
    card,
    name
FROM 
    transaction_tbl t
INNER JOIN credit_card cc
    USING(card)
INNER JOIN card_holder ch
    ON cc.cardholder_id=ch.id       
WHERE
    card IN ('4319653513507' ,'372414832802279') AND
    CAST(trns_date AS date) BETWEEN '01/01/2018' AND '06/30/2018' 
-- GROUP BY
--     card,
--     name 
;  