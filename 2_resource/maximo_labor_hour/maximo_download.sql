drop table maximo_download

CREATE TABLE maximo_download (supervisor varchar(50),
							  staff_name varchar(50),
							  work_id varchar(20),
							  work_desc varchar(500),
							  work_date date,
							  mjuf_code varchar(20),
							  labor_hour numeric,
							  overtime numeric,
							  location_id varchar(20),
							  location_desc varchar(500),
							  branch varchar(20)
							  );
							  
select * from maximo_download

drop table maximo_laborHour_pivot
CREATE TABLE maximo_laborHour_pivot as 
select md.supervisor, bs.branch,md.labor_hour,md.overtime, md.mjuf_code from maximo_download as md
right join branch_supervisor as bs
on
bs.supervisor = md.supervisor


select * from maximo_laborHour_pivot
-------------------------------------------------------------------
drop table PI_laborhour 
CREATE TABLE PI_laborhour as 
SELECT  mjuf_code, ROUND(SUM(labor_hour)) AS "Sum_Hours_PI"
FROM maximo_laborHour_pivot
where maximo_laborHour_pivot.branch = 'Potomac Interceptor'
GROUP BY  mjuf_code;
-------------------------------------------------------------------
select *  from PI_laborhour
-------------------------------------------------------------------

-------------------------------------------------------------------
CREATE TABLE Maintenance_laborhour as
SELECT  mjuf_code, ROUND(SUM(labor_hour)) AS "Sum_Hours_Maintenance"
FROM maximo_laborHour_pivot
where maximo_laborHour_pivot.branch = 'Maintenance'
GROUP BY  mjuf_code;
-------------------------------------------------------------------
select * from Maintenance_laborhour
-------------------------------------------------------------------

-------------------------------------------------------------------
CREATE TABLE Scada_laborhour as
SELECT  mjuf_code, ROUND(SUM(labor_hour)) AS "Sum_Hours_Scada"
FROM maximo_laborHour_pivot
where maximo_laborHour_pivot.branch = 'Scada'
GROUP BY  mjuf_code ;
-------------------------------------------------------------------
select * from Scada_laborhour
-------------------------------------------------------------------

-------------------------------------------------------------------
CREATE TABLE Hoursperbranch as
SELECT  branch,ROUND(SUM(labor_hour)) AS "Sum_Hours"
FROM  maximo_laborHour_pivot
GROUP BY  branch;
-------------------------------------------------------------------
select * from Hoursperbranch
-------------------------------------------------------------------
-------------------------------------------------------------------
CREATE TABLE Hourspermjuf as
SELECT  mjuf_code, ROUND(SUM(labor_hour)) AS "Sum_Hours"
FROM  maximo_laborHour_pivot
GROUP BY mjuf_code;
-------------------------------------------------------------------
select * from Hourspermjuf
-------------------------------------------------------------------








