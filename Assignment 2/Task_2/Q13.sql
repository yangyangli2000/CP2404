SELECT 
    Subr.FacFirstName AS 'Subr.FacFirstName',
    Subr.FacLastName AS 'Subr.FacLastName',
    Subr.FacSalary AS 'Subr.FacSalary',
    Supr.FacFirstName AS 'Supr.FacFirstName',
    Supr.FacLastName AS 'Supr.FacLastName',
    Supr.FacSalary AS 'Supr.FacSalary'
FROM
    faculty Subr,
    faculty Supr
WHERE
    Subr.FacSupervisor = Supr.FacSSN
        AND Subr.FacSalary < Supr.FacSalary;
    