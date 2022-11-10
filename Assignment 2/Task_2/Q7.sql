SELECT 
    course.CourseNo, COUNT(*) AS NumOfferings
FROM
    course
        JOIN
    offering ON course.CourseNo = offering.CourseNo
GROUP BY CourseNo;
