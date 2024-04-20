drop TABLE invoice

CREATE TABLE invoice (item int,
					  mjuf_rcode varchar(10),
					  invoice_amt NUMERIC,
					  vendor varchar(100),
					  invoice_no VARCHAR(100),
					  invoice_date date,
					  po_no VARCHAR(100),
					  branch varchar(50));
					 
SELECT * FROM invoice 