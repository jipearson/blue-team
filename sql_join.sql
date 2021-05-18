/* Create demographics table */
CREATE TABLE DEMOGRAPHICS(
STATE VARCHAR, 
YEAR INT,
BACHELORS_DEGREE_TOT INT,
JAIL_RATE NUMERIC,
PRISON_RATE NUMERIC,
MED_HOUSE_INC INT,
VIOLENT_CRIME_RATE INT,
GDP_MILLIONS NUMERIC,
GUNS_PER_HOUSEHOLD NUMERIC
);

/* Create the elecoral table */
CREATE TABLE ELECTORAL(
STATE VARCHAR, 
YEAR INT,
ELECTORAL_VOTES INT
);

/* Join election, demographics, and electoral datasets */
CREATE TABLE ELECTION_DEM AS 
SELECT DISTINCT 
E."STATE", 
E."YEAR",
E."OUTCOME",
E."PCT_WHITE",
E."PCT_BLACK",
E."PCT_HISPANIC",
E."PCT_OVER_60",
E."PCT_UNDER_40",
E."REGION_Midwest",
E."REGION_Northeast",
E."REGION_South",
E."REGION_West",
E."PAST_5_ELECTION_VOTING",
D.BACHELORS_DEGREE_TOT,
D.JAIL_RATE,
D.PRISON_RATE,
D.MED_HOUSE_INC,
D.VIOLENT_CRIME_RATE,
D.GDP_MILLIONS,
D.GUNS_PER_HOUSEHOLD,
EC.ELECTORAL_VOTES
FROM ELECTION  AS E
INNER JOIN DEMOGRAPHICS AS D ON (D.YEAR = E."YEAR" AND D.STATE = E."STATE")
INNER JOIN ELECTORAL AS EC ON (EC.YEAR = E."YEAR" AND EC.STATE = E."STATE")
ORDER BY E."YEAR", E."STATE"
;