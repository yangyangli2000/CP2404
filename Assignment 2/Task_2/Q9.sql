SELECT 
    StdMajor as 'Major',
    StdClass as 'Class',
    MIN(StdGPA) AS MinGPA,
    MAX(StdGPA) AS MaxGPA
FROM
    student
GROUP BY StdMajor , StdClass;
