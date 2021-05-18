SELECT COUNT(S.uun)
FROM Students S, Degrees D
WHERE S.degree = D.code
AND D.type = 'PG';