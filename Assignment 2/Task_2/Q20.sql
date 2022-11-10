SELECT 
    distinct Subr.FacFirstName,
    Subr.FacLastName,
    CONCAT(Supr.FacFirstName, ' ', Supr.FacLastName) AS 'Supervisor'
FROM
    faculty Subr,
    faculty Supr,
    offering
WHERE
    Subr.FacSupervisor = Supr.FacSSN
        AND Subr.FacSSN = offering.FacSSN
        AND OffYear = '2006'
        AND CourseNo LIKE 'IS%';
