CREATE TABLE RoadHome (
  team VARCHAR(50),
  conference VARCHAR(50),
  division VARCHAR(50),
  stadium VARCHAR(50),
  game NUMERIC,
  road SERIAL,
  home SERIAL,
  PRIMARY KEY (team)
)

COPY RoadHome
FROM 'C:\Users\jag28\Desktop\2022_NFL_Schedule_Road_Home_Count.csv'
delimiter ','
CSV HEADER;

SELECT * FROM RoadHome

DROP TABLE RoadHome