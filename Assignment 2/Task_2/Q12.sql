SELECT 
    offering.OfferNo,
    CourseNo,
    OffDays,
    OffLocation,
    OffTime,
    FacLastName
FROM
    student
        JOIN
    registration ON student.StdSSN = registration.StdSSN
        JOIN
    enrollment ON registration.RegNo = enrollment.RegNo
        JOIN
    offering ON enrollment.OfferNo = offering.OfferNo
        JOIN
    faculty ON offering.FacSSN = faculty.FacSSN
WHERE
    StdFirstName = 'Candy'
        AND StdLastName = 'Kendall'
        AND OffYear = '2005';