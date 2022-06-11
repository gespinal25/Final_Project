CREATE TABLE Schedule (
  week SERIAL,
  date VARCHAR(50),
  time VARCHAR(50),
  road VARCHAR(50),
  home VARCHAR(50),
  stadium VARCHAR(50)
)

COPY Schedule
FROM 'C:\Users\jag28\Desktop\2022_NFL_Regular_Season_Original_Schedule.csv'
delimiter ','
CSV HEADER;

SELECT * FROM Schedule

DROP TABLE Schedule