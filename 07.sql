SELECT DISTINCT P.course
FROM Programmes P, Degrees D
WHERE D.code = P.degree
AND D.type = 'PG'
AND EXISTS (SELECT * 
FROM Degrees D1, Programmes P1
WHERE P1.course = P.course
AND D1.type = 'UG' and P1.degree <> P.degree);