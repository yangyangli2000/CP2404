SELECT 
    OfferNo,
    CourseNo,
    CONCAT(FacFirstName, ' ', FacLastName) AS 'Instructor Name'
FROM
    offering 
        JOIN
    faculty ON offering.FacSSN = faculty.FacSSN
WHERE
    CourseNo LIKE 'FIN%'
        AND OffTerm = 'winter'
        AND OffYear = '2006'
        AND FacRank = 'PROF';
 
