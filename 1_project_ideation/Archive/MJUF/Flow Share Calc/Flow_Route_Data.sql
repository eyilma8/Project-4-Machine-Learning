drop table flow_route
CREATE TABLE flow_route (flow_route_no varchar(20),
						flow_route_name varchar(50),
						flow_route_length int
						);
						
SELECT * FROM flow_route

INSERT INTO flow_route (flow_route_no, flow_route_name, flow_route_length)
VALUES (12.1, 'Dulles Airport', 15950),
  ('12A', 'Loudoun',  45575),
  ('12B', 'Greatfalls VA',  24776),
  ('12C', 'Accross Potomac River',  35600),
  ('12D', 'Clara Barton Pkwy south', 17592),
  ('12F', 'DC Boundary',  13251),
  ('12G', 'Sugarland Run',  15010),
  ('12H', 'Watts and Muddy',  24121),
  ('12I', 'Difficult Run',  100),
  ('01', 'Little Falls',  5039),
  ('02', 'UPI',  16640),
  ('03', 'UPIRS',  26849),
  ('04', 'Rock Creek Main Interceptor',  14978),
  ('05', 'Potomac Force Main',  100),
  ('06', 'B Str New Jersey',  18600),
  ('07', 'Blue Plain inflow',  23186),
  ('08', 'Anacostia Force Main',  41149),
  ('09', 'Watts Branch and AMI',  37768),
  ('10', 'Oxon Run',  23533),
  ('11', 'Blue Plains inflow relief',  100)
  