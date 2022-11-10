SELECT 
    distinct faculty.FacSSN,
    CONCAT(FacFirstName, ' ', FacLastName) AS 'Name',
    FacCity
FROM
    offering
        JOIN
    faculty ON offering.FacSSN = faculty.FacSSN
WHERE
    OffTerm = 'winter' AND OffYear = '2006'
