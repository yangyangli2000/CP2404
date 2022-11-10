SELECT 
    FacFirstName,
    FacLastName,
    FacCity,
    FacSalary*1.2 AS InflatedSalary,
    FacHireDate
FROM
    faculty
WHERE
    FacHireDate > '1996-12-31';