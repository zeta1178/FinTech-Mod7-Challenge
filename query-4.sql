SELECT * FROM public.transaction_tbl
WHERE
    card = '344119623920892' OR
    card = '4866761290278198714' 
ORDER BY id ASC
;