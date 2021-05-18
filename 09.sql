SELECT E.student, MAX(E.date)
FROM Exams E
WHERE (
SELECT COUNT(E1.course)
FROM Exams E1
WHERE E.student = E1.student
AND (E1.student, E1.date) IN (
SELECT E2.student, MAX(E2.date)
FROM Exams E2
GROUP BY E2.student)
) > 1
GROUP BY E.student;