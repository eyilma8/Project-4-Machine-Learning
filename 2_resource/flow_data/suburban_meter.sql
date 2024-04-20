drop TABLE flow_input

CREATE TABLE flow_input (user_id varchar(10), 
						 mjuf_id varchar(10),
						 user_name varchar(20),
						 input_name varchar(20),
						 lat int, 
						 lon int,
						 meter boolean,
						 dis_flowroute varchar(20));
						 
SELECT * FROM flow_input