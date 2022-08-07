SELECT
    cardholder_id,
    card,
    name
FROM 
    credit_card cc
INNER JOIN card_holder ch
    ON cc.cardholder_id=ch.id
WHERE
--     cardholder_id = 2 OR
--     cardholder_id = 18
    cardholder_id = 2 OR
    cardholder_id = 18
-- GROUP BY
-- --     name,
-- --     id, card
--     cardholder_id, card
ORDER BY
--     id ASC
    cardholder_id ASC
;