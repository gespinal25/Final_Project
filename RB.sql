CREATE TABLE RB (
  rank SERIAL,
  player VARCHAR(50),
  team VARCHAR(50),
  att SERIAL,
  yds VARCHAR,
  ya NUMERIC,
  lg SERIAL,
  twenty SERIAL,
  td SERIAL,
  rec SERIAL,
  tgt SERIAL,
  ryds SERIAL,
  ryr NUMERIC,
  rtd SERIAL,
  fl SERIAL,
  g SERIAL,
  PRIMARY KEY (player)
)

COPY RB
FROM 'C:\Users\jag28\Desktop\2021_Fantasy_Football_Statistics_RB.csv'
delimiter ','
CSV HEADER;

SELECT * FROM RB

DROP TABLE RB