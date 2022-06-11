CREATE TABLE StrengthofSchedule (
  rank SERIAL,
  team VARCHAR(50),
  opponentrecord VARCHAR(50),
  opponentwin VARCHAR(50),
  PRIMARY KEY (team)
)

COPY StrengthofSchedule
FROM 'C:\Users\jag28\Desktop\2022 Strength of Schedule_NFL.csv'
delimiter ','
CSV HEADER;

SELECT * FROM StrengthofSchedule

DROP TABLE StrengthofSchedule