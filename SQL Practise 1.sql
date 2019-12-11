
-- Retrieve all employees whose address is in Elgin,IL

SELECT * FROM EMPLOYEES WHERE ADDRESS LIKE '%Elgin,IL' ;

--  Retrieve all employees who were born during the 1970's.

SELECT * FROM EMPLOYEES  WHERE B_DATE LIKE  '197%' ; 

--Retrieve all employees in department 5 whose salary is between 60000 and 70000 

SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 60000 AND 70000 ; 

-- Retrieve a list of employees ordered by department ID.

SELECT * FROM EMPLOYEES ORDER BY DEP_ID ; 

-- Retrieve a list of employees ordered in descending order by 
--department ID and within each department ordered alphabetically in
-- descending order by last name.

SELECT * FROM EMPLOYEES ORDER BY DEP_ID DESC , L_NAME DESC ; 

-- For each department ID retrieve the number of employees in the department.

SELECT DEP_ID, COUNT(EMP_ID) AS  EMP_COUNT FROM EMPLOYEES  GROUP BY  DEP_ID; 

--  For each department retrieve the number of employees in the 
-- department, and the average employees salary in the department.

SELECT DEP_ID, COUNT(EMP_ID) , AVG(SALARY)  
FROM EMPLOYEES GROUP BY DEP_ID; 

-- Label the computed columns in the result set of Query 5B as 
-- “NUM_EMPLOYEES” and “AVG_SALARY” AND order the result set by Average Salary

SELECT DEP_ID, COUNT(EMP_ID) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY 
FROM EMPLOYEES GROUP BY DEP_ID ORDER BY  AVG_SALARY  ; 

--In Query above result set limit the result to departments with fewer than 4 employees.

SELECT DEP_ID, COUNT(EMP_ID) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY 
FROM EMPLOYEES GROUP BY DEP_ID HAVING  COUNT(EMP_ID) < 4  ORDER BY  AVG_SALARY   ; 


-- Retrive employees who earn mre than avg salary

SELECT * FROM EMPLOYEES WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES); 

SELECT  EMP_ID, SALARY , (SELECT AVG(SALARY ) FROM EMPLOYEES ) AS AVG_SALARY FROM EMPLOYEES;

 -- Retrive employe ID & Department Name from employee & dep table and 
 --who earn mre than avg salary
 
 SELECT * FROM DEPARTMENTS ; 
 
 SELECT E.EMP_ID ,E.SALARY,  D.DEP_NAME FROM EMPLOYEES E, DEPARTMENTS D
 WHERE E.DEP_ID = D.DEPT_ID_DEP AND SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES); 

Select F_NAME , DEP_NAME FROM EMPLOYEES  , DEPARTMENTS WHERE DEP_ID = DEPT_ID_DEP  ; 
 




















