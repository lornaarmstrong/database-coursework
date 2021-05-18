SELECT DISTINCT S.uun, S.name
FROM Students S
WHERE NOT EXISTS (
SELECT *
FROM Programmes P
WHERE S.degree = P.degree
AND NOT EXISTS (
SELECT *
FROM Exams E
WHERE E1.student = S.uun
AND P.course = E.course)
);