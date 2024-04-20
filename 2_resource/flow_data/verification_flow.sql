DROP TABLE verification_flow

CREATE TABLE verification_flow (Station varchar (20),
								October	numeric,
								November numeric,	
								December numeric,	
								January numeric,	
								February numeric,	
								March numeric,	
								April numeric,	
								May	numeric,
								June numeric,
								July numeric,	
								August numeric,
								September numeric,	
								report_year int
								
);
SELECT * FROM verification_flow

ALTER TABLE verification_flow
ADD Annual_flow numeric;

SELECT * FROM verification_flow

UPDATE verification_flow
SET Annual_flow = (October +November+ December +January + February+ March + April +May + June +July + August + September)/365.25;

SELECT * FROM verification_flow

Select station,report_year,annual_flow from verification_flow