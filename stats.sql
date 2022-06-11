CREATE TABLE Stats (
  season SERIAL,
  conf VARCHAR(50),
  division VARCHAR(50),
  team VARCHAR(50),
  wins SERIAL,
  losses SERIAL,
  ties SERIAL,
  pct NUMERIC,
  divrank SERIAL,
  scored SERIAL,
  allowed SERIAL,
  net SERIAL,
  sov NUMERIC,
  sos NUMERIC
)

COPY Stats
FROM 'C:\Users\jag28\Desktop\NFL Stats_2002_2021.csv'
delimiter ','
CSV HEADER;

SELECT * FROM Stats

DROP TABLE Stats