select * from CITY where population>100000 and CountryCode='USA';

select name from CITY where population>120000 and CountryCode='USA';

select * from city;

select * from city where id=1661;

select * from city where countrycode='JPN';

select name from city where countrycode='JPN';

select city,state from station;

select distinct city from station where id % 2=0;

select count(city)-count(distinct city) from station;

select distinct city from station where city like'%A' or city like'%E' or city like'%I' or city like'%O' or city like'%U'; 

-- Weather Observation Station8 Problem--
select distinct city from station
where (city like 'a%'
or city like 'e%'
or city like 'i%'
or city like 'o%'
or city like 'u%')
and
(
city like '%a'
or city like '%e'
or city like '%i'
or city like '%o'
or city like '%u'
)

--Weather station 9 Problem--

select distinct city from station
where not (city like'A%' or city like'E%' or city like'I%' or city like'O%' or city like'U%');

--Weather station 10 Problem--

select distinct city from station 
where not (city like'%a' or city like'%e' or city like'%i' or city like'%o' or city like'%u');

--Weather station 11 Problem--

select distinct city from station 
where not(city like'A%' 
         or city like'E%'
         or city like'I%'
         or city like'O%'
         or city like'U%')
or not(city like'%a'
       or city like'%e'
       or city like'%i'
       or city like'%o'
       or city like'%u');
	   
--Weather station 12 Problem--   
select distinct city from station 
where not(city like'A%' 
         or city like'E%'
         or city like'I%'
         or city like'O%'
         or city like'U%')
and not(city like'%a'
       or city like'%e'
       or city like'%i'
       or city like'%o'
       or city like'%u');
	   
-- Query Employee Salaries --

select name from employee where salary>2000 and months<10 order by employee_id;

-- Employee Names --

select name from employee order by name;

--Try Triangle--

select if(A+B<=C or B+C<=A or C+A<=B,'Not A Triangle',
if(A=B and B=C,'Equilateral',
if(A=B or B=C or C=A,'Isosceles','Scalene')))
from triangles;

--Count Function--

select count(name) from city where population>100000;

--Sum Function--

select sum(population) from city where district="California";

--Average Function--

select avg(population) from city where district='California';

--Round Function--

select Round(avg(population)) from city;

--Japan Population--

select sum(population) from city where countrycode='JPN';

--Population Density Difference--

select max(population)-min(population) from city;

--Weather Problem 2--

select round(sum(lat_n),2),round(sum(long_w),2) from station;

--Weather Problem 13--

select round(sum(lat_n),4) from station
where lat_n < 137.2345 and lat_n > 37.7880;

--Weather Problem 14--

select round(max(lat_n),4) from station where lat_n<137.2345;

--Weather Problem 15 New Concept--

select round(long_w, 4) from station 
where lat_n = (select max(lat_n) 
from station where lat_n < 137.2345);

--Weather Problem 16 --

select round(min(lat_n), 4) 
from station where lat_n > 38.7780;

--Weather Problem 17 --

select round(long_w,4) from station
where lat_n=select min(lat_n) from station 
where lat_n<37.7880;

--Higher than 75--
select name from students where marks>75 order by right(name,3),id;

--Weather Problem 19--

select round(sqrt(power(max(lat_n)-min(lat_n),2)+power(max(long_w)-min(long_w),2)),4)
from station;
