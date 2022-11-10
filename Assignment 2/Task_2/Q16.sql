SELECT 
    OfferNo,
    CourseNo,
    faculty.FacSSN AS 'faculty.FacSSN',
    FacFirstName,
    FacLastName
FROM
    offering
        LEFT JOIN
    faculty ON offering.FacSSN = faculty.FacSSN
WHERE
    CourseNo LIKE 'IS%'
ORDER BY faculty.FacSSN;
