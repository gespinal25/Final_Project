CREATE TABLE QB (
  rank SERIAL,
  player VARCHAR(50),
  team VARCHAR(50),
  cmp SERIAL,
  att SERIAL,
  pct NUMERIC,
  yds VARCHAR,
  ya NUMERIC,
  td SERIAL,
  int SERIAL,
  sacks SERIAL,
  ratt SERIAL,
  ryds SERIAL,
  rtd SERIAL,
  fl SERIAL,
  g SERIAL,
  PRIMARY KEY (player)
)

COPY QB
FROM 'C:\Users\jag28\Desktop\2021_Fantasy_Football_Statistics_QB.csv'
delimiter ','
CSV HEADER;

SELECT * FROM QB

DROP TABLE QB