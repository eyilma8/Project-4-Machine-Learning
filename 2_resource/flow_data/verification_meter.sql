drop TABLE ver_meter

CREATE TABLE ver_meter (location_id varchar (20),
						meter_id varchar (10),
						lat int,
						lon int,
						meter_type varchar(20),
						date_installed date
					   );
					   
SELECT * FROM ver_meter