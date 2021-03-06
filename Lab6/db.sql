#Madelaine Struwe
#Josh Nguyen

SELECT sname
FROM store
ORDER BY sname ASC; 

SELECT id, sname
FROM store
WHERE id < 4
ORDER BY sname ASC LIMIT 3;

SELECT id, sname
FROM store
WHERE id > 2
ORDER BY sname ASC LIMIT 3;

SELECT price, sname
FROM store
WHERE price > 1;

SELECT sname, qty, price, qty * price AS 'extended price'
FROM store;

SELECT SUM(qty * price) AS "Total price of everying in store"
FROM store;

SELECT COUNT(DISTINCT sname) AS 'Total unique items in store' 
FROM store;

SELECT cname, department_id
FROM course
LEFT JOIN department ON course.department_id = 
department.id
WHERE name = 'CSC';

SELECT SUM(count) AS 'Total enrollment'
FROM enrollment;

SELECT COUNT(DISTINCT id)
FROM course;

SELECT COUNT(DISTINCT department_id)
FROM course;

SELECT CONCAT(department.name, course.cname) AS course_name
FROM course
JOIN department ON department_id = department.id
WHERE department.name = 'CSC';

SELECT GROUP_CONCAT(department.name , course.cname)
FROM department, course
WHERE course.department_id = department.id;

SELECT GROUP_CONCAT(department.name , course.cname, enrollment.count)
FROM department, course, enrollment
WHERE course.department_id = department.id AND department.id = enrollment.id;
