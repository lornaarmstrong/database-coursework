SELECT DISTINCT S.uun
FROM students S
WHERE NOT EXISTS ( 
SELECT *
FROM Exams E
WHERE E.student = S.uun);