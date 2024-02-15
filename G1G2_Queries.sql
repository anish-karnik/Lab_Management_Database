/* Quries Used by G1_G2 (3rd Question)*/

select * from inventory where Equipment_Name='Centrifuge';

select * from professor where First_Name='Charles';

select * from staff where First_Name='Melissa';

select * from students where First_Name='Ameya';

select * from CSE;


select s.salary from staff s
where s.salary not in
(select s2.salary from staff s2 cross join (select * from staff) x where s2.salary < x.salary );

select salary from staff order by salary desc; 

select  s.Employee_ID, s.First_Name, s.Last_Name, l.lab_name, l.contact,
case
when s.Role='Assistant' then 20000
when s.Role='Researcher' then 10000
when s.Role='Technician' then 5000
else 
'None'
end as Health_Allowance
from staff s
right join 
lab l
on 
s.lab_name=l.lab_name;

/*Error Queries for 3.1 part*/

UPDATE students SET Roll_Number  =  11637578 WHERE   First_Name  =  'Angela';

UPDATE students SET Email_ID = 'angela.com' WHERE First_Name = 'Angela';