SELECT 
    course.CourseNo,
    CrsDesc,
    COUNT(*) AS NumOfferings,
    AVG(OffNumEnrolled) AS AvgEnroll
FROM
    course
        JOIN
    offering ON course.CourseNo = offering.CourseNo
GROUP BY course.CourseNo , CrsDesc
