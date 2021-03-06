SELECT E.student, 
SUM(CASE WHEN E.grade >= 80 THEN 1 ELSE 0 END) as A,
SUM(CASE WHEN E.grade >= 60 AND E.grade < 80 THEN 1 ELSE 0 END) as B,
SUM(CASE WHEN E.grade >= 40 AND E.grade < 60 THEN 1 ELSE 0 END) as C,
SUM(CASE WHEN E.grade < 40 THEN 1 ELSE 0 END) as D
FROM Exams E
GROUP BY E.student;