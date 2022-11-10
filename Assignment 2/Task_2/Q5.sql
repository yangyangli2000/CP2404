SELECT 
    OfferNo, course.CourseNo, OffDays
FROM
    offering
        JOIN
    course ON offering.CourseNo = course.CourseNo
WHERE
    (CrsDesc LIKE '%finance%'
        OR CrsDesc LIKE '%database%')
        AND OffTerm = 'winter'
        AND OffYear = '2006';