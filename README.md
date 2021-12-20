# Technical Competencies Evaluation

### Intro

This README contains instructions for completing a technical competencies evaluation. Please read all of the instructions carefully.

Please fork this repository before beginning. 

### Spec

Use Python or Go to build a basic service that exposes a geographical search API. The API should accept 4 values (xmin, ymin, xmax, ymax) defining a bounding box, query a PostgreSQL database, and return a location name that matches one or more points within the bounds. Deploy the service as one or more Docker containers to AWS with Terraform or CloudFormation using the container orchestration framework of your choice.

This test project will be evaluated for its architecture, design patterns, code structure, organization, and general practices.

An example database structure and sample data is provided in `sql/init.sql` and an example query is provided below.

Upon completion, provide the link to your forked GitHub repository and client-side instructions necessary to query the API and return the intended result. The instructions you provide will be used to test
that the web service works and functions as intended.


### Geospatial query

Query for locations covered by the given bounding box:  
```
SELECT location_name.name 
FROM location_name 
INNER JOIN location ON location.id = location_name.location_id 
WHERE ST_CoveredBy(
	location.location, ST_MakeEnvelope(
		-76.648865, 38.216604, -75.948486, 39.582407));
```
