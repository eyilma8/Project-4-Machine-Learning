CREATE TABLE user_flow (
						user_name varchar(20),
						flow_year int,
						flow_month varchar(20),
						input_name varchar(100),
						monthly_flow numeric
						
						);
SELECT * FROM user_flow

SELECT uf.user_name, uf.input_name, uf.flow_year, uf.flow_month, uf.monthly_flow
FROM user_flow as uf
WHERE uf.flow_year = 2022 AND uf.flow_month = 'OCTOBER' OR
		uf.flow_year = 2022 AND uf.flow_month='NOVEMBER' OR 
		uf.flow_year = 2022 AND uf.flow_month = 'DECEMBER'OR
		uf.flow_year = 2023 AND uf.flow_month = 'JANUARY' OR
	 	uf.flow_year = 2023	AND	uf.flow_month = 'FEBRUARY' OR
		uf.flow_year = 2023	AND uf.flow_month= 'MARCH' OR
		uf.flow_year = 2023	AND	  uf.flow_month= 'APRIL' OR
		uf.flow_year = 2023	AND	uf.flow_month= 'MAY' OR
		uf.flow_year = 2023	 AND uf.flow_month= 'JUNE' OR
		uf.flow_year = 2023	AND  uf.flow_month= 'JULY' OR
		uf.flow_year = 2023	AND  uf.flow_month= 'AUGUST' OR
		uf.flow_year = 2023	AND  uf.flow_month= 'SEPTEMBER'				  
