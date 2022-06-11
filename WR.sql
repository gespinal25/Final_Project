CREATE TABLE WR (
  rank SERIAL,
  player VARCHAR(50),
  team VARCHAR(50),
  rec SERIAL,
  tgt SERIAL,
  yds VARCHAR,
  yr NUMERIC,
  lg SERIAL,
  twenty SERIAL,
  td SERIAL,
  ratt SERIAL,
  ryds SERIAL,
  rtd SERIAL,
  fl SERIAL,
  g SERIAL,
  PRIMARY KEY (player)
)

COPY WR
FROM 'C:\Users\jag28\Desktop\2021_Fantasy_Football_Statistics_WR.csv'
delimiter ','
CSV HEADER;

SELECT * FROM WR

DROP TABLE WR