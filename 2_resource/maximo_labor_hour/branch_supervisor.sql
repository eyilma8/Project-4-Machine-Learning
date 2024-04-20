

CREATE TABLE branch_supervisor (supervisor varchar (50),
							  branch varchar (20)
);

INSERT INTO branch_supervisor(supervisor,branch)

VALUES  			('Tsegaye D. Assefa', 'Potomac Interceptor'),
					 ('Willie A. Williams','Scada'),
					 ('Dwayne A. Jones','Maintenance'),
					 ('Floyd A. Smith','Maintenance'),
					 ('Marc W. Barbee','Maintenance'),
					 ('Robert J. Simpkins III','Operation'),
					 ('Kenrick D. St. Louis','Operation'),
					 ('Keith T. Watts','Operation'),
					 ('David E. Peeler','Maintenance'),
					 ('Gregory D. Stephens','Operation'),
					 ('Carlos E. Almeida','Maintenance');
					 

select * from branch_supervisor