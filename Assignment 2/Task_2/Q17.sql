SELECT 
    FacSSN AS 'SSN',
    FacFirstName AS 'FirstName',
    FacLastName AS 'LastName',
    FacRank AS 'Rank',
    FacSalary AS 'Salary'
FROM
    student,
    faculty
WHERE
    StdSSN = FacSSN;