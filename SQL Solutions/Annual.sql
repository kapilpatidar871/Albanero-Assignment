
SELECT * FROM annual;
/* Total number of rows*/
SELECT count(*) as No_of_rows FROM annual;

/* Total Number of Columns */
SELECT count(*) as Number_of_columns 
FROM information_schema.columns
where table_name ="annual";

/* Distinct values of each columns */
select count(distinct Year) as Unique_year
from annual;


select count(distinct Industry_aggregation_NZSIOC) 
from annual;

select count(distinct Industry_code_NZSIOC) 
from annual;

select count(distinct Industry_name_NZSIOC ) 
from annual;

select count(distinct Units ) 
from annual;

select count(distinct Variable_code)
from annual;

select count(distinct Variable_name)
from annual;

select count(distinct Variable_category)
from annual;

select count(distinct Value)
from annual;

select count(distinct Industry_code_ANZSIC06)
from annual;

/* Null and Empty values count */
SELECT COUNT(*)-COUNT(Year) As Year, COUNT(*)-COUNT(Industry_aggregation_NZSIOC) As Industry_aggregation_NZSIOC,
 COUNT(*)-COUNT(Industry_code_NZSIOC) As Industry_code_NZSIOC, COUNT(*)-COUNT(Industry_name_NZSIOC) As Industry_name_NZSIOC, 
 COUNT(*)-COUNT(Units) As Units, COUNT(*)-COUNT(Variable_code) As Variable_code, COUNT(*)-COUNT(Variable_name) As Variable_name,
 COUNT(*)-COUNT(Variable_category) As Variable_category, COUNT(*)-COUNT(Value) As Value, COUNT(*)-COUNT(Industry_code_ANZSIC06) As Industry_code_ANZSIC06
FROM annual; 