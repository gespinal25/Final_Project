CREATE TABLE NFLDST (
  rank SERIAL,
  team VARCHAR(50),
  sack SERIAL,
  int SERIAL,
  fr SERIAL,
  ff SERIAL,
  def td SERIAL,
  sfty SERIAL,
  spc td SERIAL,
  g SERIAL,
  PRIMARY KEY (team);
)

COPY NFLDST
FROM 'C:\Users\jag28\Desktop\UCF\2021_Fantasy_Football_Statistics_DST.csv'
delimiter ','
CSV HEADER;

SELECT * FROM NFLDST
