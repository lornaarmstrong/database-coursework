SELECT DISTINCT E.student
FROM Exams E
WHERE 
(SELECT COUNT(E1.grade) 
FROM Exams E1
WHERE E1.student = E.student
AND E1.grade < 40) * 1.0
/
(SELECT COUNT(E2.grade) FROM Exams E2 WHERE E2.student = E.student) 
> 0.3;