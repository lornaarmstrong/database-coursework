SELECT DISTINCT P.degree, SUM(C.credits)
FROM Degrees D, Courses C, Programmes P
WHERE C.code = P.course AND D.code = P.degree
GROUP BY P.degree
UNION
SELECT DISTINCT D1.code, 0
FROM Degrees D1
WHERE NOT EXISTS (
SELECT *
FROM Programmes P
WHERE P.degree = D1.code);