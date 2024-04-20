DROP TABLE SUMMARY_MjufHour_2023

create table SUMMARY_MjufHour_2023 (mjuf_code varchar(20), 
									Hours numeric, 
									catagory varchar(50)
								   );
								   
select * from 		SUMMARY_MjufHour_2023						   
								   
drop table MJUF_LaborHour_Summary 
CREATE TABLE MJUF_LaborHour_Summary  as 
SELECT  catagory, mjuf_code
FROM SUMMARY_MjufHour_2023
--where maximo_laborHour_pivot.branch = 'Potomac Interceptor'
GROUP BY  catagory;

select * from MJUF_LaborHour_Summary 