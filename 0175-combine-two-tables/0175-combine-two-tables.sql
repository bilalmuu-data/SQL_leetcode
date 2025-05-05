SELECT
    firstName,
    lastName,
    city,
    state
FROM
    Person AS p
LEFT JOIN
    Address AS a
ON 
    p.personid = a.personId