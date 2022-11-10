SELECT 
    CONCAT(FacFirstName, ' ', FacLastName) AS 'Faculty Name',
    o1.OffYear AS 'Year',
    o1.CourseNo
FROM
    offering o1,
    offering o2,
    faculty
WHERE
    o1.CourseNo = o2.CourseNo
        AND faculty.FacSSN = o1.FacSSN
        AND faculty.FacSupervisor = o2.FacSSN
        AND o1.CourseNo = o2.CourseNo
        AND o1.OffYear = o2.OffYear
    

