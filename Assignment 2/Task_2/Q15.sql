SELECT 
    CourseNo,
    enrollment.OfferNo,
    ROUND(AVG(StdGPA), 1) AS AvgGPA
FROM
    student
        JOIN
    registration ON student.StdSSN = registration.StdSSN
        JOIN
    enrollment ON registration.RegNo = enrollment.RegNo
        JOIN
    offering ON enrollment.OfferNo = offering.OfferNo
WHERE
    OffTerm = 'winter'
group by CourseNo,
    enrollment.OfferNo
HAVING AvgGPA > '3'


