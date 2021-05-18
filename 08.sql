SELECT DISTINCT P.course
FROM Programmes P, Degrees D
WHERE NOT EXISTS (
SELECT *
FROM Programmes P1, Degrees D1
WHERE D1.type = 'PG'
AND P1.degree = D1.code
AND P.course = P1.course
AND P1.degree <> P.degree
)
AND P.degree = D.code
AND D.type = 'PG';