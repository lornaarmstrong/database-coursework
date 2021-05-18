SELECT DISTINCT E.student, MIN(E.grade), MAX(E.grade), COUNT(E.course)
FROM Exams E
GROUP BY E.student
HAVING (AVG(E.grade) >= 75);