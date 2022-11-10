SELECT 
    StdMajor, ROUND(AVG(StdGPA), 1) AS AvgGPA
FROM
    student
WHERE
    StdClass = 'JR' OR StdClass = 'SR'
GROUP BY StdMajor
HAVING AvgGPA > 3.3;
