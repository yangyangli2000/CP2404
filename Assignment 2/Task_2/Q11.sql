SELECT 
    OfferNo,
    course.CourseNo,
    CrsDesc,
    OffDays,
    OffLocation,
    OffTime
FROM
    course
        JOIN
    offering ON course.CourseNo = offering.CourseNo
        JOIN
    faculty ON offering.FacSSN = faculty.FacSSN
WHERE
    FacFirstName = 'Leonard'
        AND FacLastName = 'Fibon'
        AND OffTerm = 'spring'
        AND OffYear = '2006';