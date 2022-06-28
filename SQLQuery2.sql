select * from employee
--1. Display all the employees whose name starts with “m” and 4 th character is “h”.
select ename from employee
where ename like 'm__h%'

--2. Find the value of 3 raised to 5. Label the column as output.

select POWER(3,5)as output


--3. Write a query to subtract 20 days from the current date.
select dateadd(DAY,-20,GETDATE())


--4. Write a query to display name of employees whose name starts with “j” and contains “n” in their name.
select ename from employee
where ename like 'j%' and  ename like '%n%'

--5. Display 2nd to 9th character of the given string “SQL Programming”.
select SUBSTRING('sql programming',2,9)


--6. Display name of the employees whose city name ends with “ney” &contains six characters.
select ename from employee
where city like '___ney%'

--7. Write a query to convert value 15 to string.
select CONVERT(varchar(20),15)


--8. Add department column with varchar (20) to Employee table.
alter table employee add department varchar(20)


--9. Set the value of department to Marketing who belongs to London city.
update employee set department ='marketing'
where city='london'

--10. Display all the employees whose name ends with either “n” or “y”.
select * from employee 
where ename like '%n' or ename like '%y'

--11. Find smallest integer value that is greater than or equal to 63.1, 63.8 and -63.2.
select CEILING(63.1),CEILING(63.8),CEILING(-63.2)

--12. Display all employees whose joining date is not available.
select * from employee
where joiningdate is null 


--13. Display name of the employees in capital letters and city in small letters.
select UPPER(ename),lower(city) from employee


--14. Change the data type of Ename from varchar (30) to char (30).
alter table employee alter column ename char(30)








--15. Display city wise maximum salary.

select max(salary) from employee
group by city

--16. Produce output like <Ename> works at <city> and earns <salary> (In single column).
select CONCAT(trim(ename),' ','works at',city,'and earns',salary) from employee;

--17. Find total number of employees whose salary is more than 5000.
select count(*) from employee 
where salary>5000








--18. Write a query to display first 4 & last 3 characters of all the employees.

select left(ename,4),right(rtrim(ename),3) from employee

--19. List the city having total salaries more than 15000 and employees joined after 1st January, 2014.

select city,sum(salary) from employee
where joiningdate>'01-jan-2014'
group by city
having sum(salary)>15000

--20. Write a query to replace “u” with “oo” in Ename.

select REPLACE(ename,'u','oo') from employee

--21. Display city with average salaries and total number of employees belongs to each city.

select city, avg(salary),count(*) from employee
group by city








--22. Display total salaries paid to female employees.

select sum(salary) from employee 
where gender='female'

--23. Display name of the employees and their experience in years.

select ename , datediff(YEAR,joiningdate,getdate()) from employee

--24. Remove column department from employee table.

alter table employee drop column department

--25. Update the value of city from syndey to null.

update employee 
set city = null
where city='sydney'


--26. Retrieve all Employee name, Salary & Joining date.
select ename,salary,joiningdate from employee

--27. Find out combine length of Ename & Gender.

select LEN(CONCAT(trim(ename),trim(gender))) from employee

--28. Find the difference between highest & lowest salary.

select max(salary)-min(salary) from employee

--29. Rename a column from Ename to FirstName.

sp_rename 'employee.ename','firstname' 

--30. Rename a table from Employee to EmpMaster

sp_rename 'employee','empmaster'














































