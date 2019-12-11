--Select the names and job start dates of all employees who work for
 --the department number 5.
 
 --Use the Inner join operation with the EMPLOYEES table as the left table and
-- the JOB_HISTORY table as the right table

Select  * from JOBS; 

SELECT E.F_NAME, J.START_DATE FROM EMPLOYEES E INNER JOIN JOB_HISTORY J 
ON E.EMP_ID = J.EMPL_ID WHERE J.DEPT_ID = 5; 

--Select the names, job start dates, and job titles of all employees
--who work for the department number 5.

select E.EMP_ID,E.L_NAME,E.DEP_ID,D.DEP_NAME
	from EMPLOYEES AS E 
	LEFT OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID=D.DEPT_ID_DEP 
	WHERE YEAR(E.B_DATE) < 1980

