SELECT
    name,
    id,
    card
FROM 
    credit_card cc
INNER JOIN card_holder ch
    ON cc.cardholder_id=ch.id
WHERE
    id = 2 OR
    id = 18
GROUP BY
    name,id, card
ORDER BY
    id ASC
;