Flow Share Calc
SQL server (Postgress)
1. Upload. 

a. District flow per route per length per flow (district_flow)
b. suburban flow per route per length per flow (suburban_flow)
c. Upload verification flow (pump station and blue plains) with associated routes (verification_flow)

2. Filter flow route data
route_no; 
flow_mgd; 
travel_length_ft, 
route_length_ft; 
route_ name; 
mjuf_user

3. Download route data in csv file.

Jupyter notebook
4. Upload route csv file in Jupiter notebook incl verification flow

5. Prorate District flow to match verification flow.
	Iterate to get adjustment coefficient for Route that discharge both into Main and Potomac PS
6. Updates prorate flow for each route
7. Calculate for each route

a. calculate flow_length weighted percentage for each route start upstream.
b. determine flow discharge route for each route incl if need split





