SELECT*
 FROM project; --pulls entire data from projects table

 SELECT*
 FROM Employees; --data from entire employees table

 --The query below will pull data from both tables (but only employees working on a project)
 SELECT Employees.Emp_ID, Fname, Lname, projectName, ProjectStartDate
 FROM Employees
 INNER JOIN Project ON Employees.Emp_ID = Project.Emp_ID;

 --The query below (LEFT JOIN) will pull all the employees on the left and those that satisfy the condition on the right(also working on a project).
  
 SELECT Employees.address, Lname, projectName, Project_ID, projectStartDate
  FROM Employees
 LEFT JOIN Project ON Employees.Emp_ID = Project.Emp_ID;
 -- The right just does the exact opposite

 UPDATE project
 SET Emp_ID ='1189' 
 WHERE Project_ID =2010;
 --The full join pulls entire data 
  SELECT Employees.address, Lname, projectName, Project_ID, projectStartDate
  FROM Employees
 FULL OUTER JOIN Project ON Employees.Emp_ID = Project.Emp_ID;
 