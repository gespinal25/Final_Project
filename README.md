# 2022 NFL Game Prediction Analysis

## Overview of Project
For our group project we decided to build an NFL game prediction tool for the upcoming 2022 NFL season. We chose this project because we are all football fans. We are fans of the Eagles, Bills, and the Packers. We can use our prediction tool to see how the outcomes of our teams will fair in the upcoming 2022 season. The application will also show historical data for all teams. 

https://docs.google.com/presentation/d/1ZvpOXmh9rtADLx8kJuIlLuLyKW3kg7nmaObMBLoU9PA/edit?usp=sharing 
  
### Team Roles
Group two overcame a hurdle to get the team roles established. Initially, each team member was able to get the role they desired, however one team member has not been presented to agree to the roles. As a group of three, we decided to keep our original roles and then work as a team to cover the fourth role. The roles are as follows:

- Square Role: Gisell. She will ensure the github is update with all necessary files. 
- Triangle Role: Team Effort. As a team, we will complete the machine learning model. 
- Circle Role: James. He will make sure the data is complete and working. 
- X Role: Jesse. He will decide which technologies will be used for the prediction tool.

### Technology Used
For our analysis we will use python and tableau. We will use python (such as pandas, numby, and Scikit-learn linear regression model) to create the code needed for our analysis. We will import the data sets we acquired and display our results/visuals using tableau.
    
### Datasets
The data sets we have for our analysis are 2022 strength of schedule and team stats dating back to 2002. We will use the overall record for each team during each season to build a trending pattern of wins and losses. We will combine that data with the upcoming seasons strength of schedule, record of opponents, and statistics for QBs, RBs, WRs, and DEF to complete our 2022 NFL game predictions. Data sets will be updated and reformatted to be read by the technology used. All the data sets contain a "Team" column with the abbreviated name for each to in order for the data sets to interact together. 

### Database
Our team is using an online database with continous NFL statistics updates to have the most up to date information for our tool. The database that is used is sportsipy (sportsipy.nfl.boxscore.Boxscore). Using the following code, our tool will be able to pull the most accurate data as it is updated:

from sportsipy.nfl.boxscore import Boxscore

import nflfastpy as nfl

The csv containing stastical data was stored on Postgres database. Those are loaded onto github.

### Dashboard
The dashboard we are building is a user friendly dashboard. We would like to include all the data we have gathered but not overwhelm the user. We would like to have separate folders/sections for the user to be able to browse the information they are looking for. The user can sort through the NFL team they are looking for and under each team will contain the schedule, results, prediction as well as data for QBs, RBs, WRs, and Defense. This dashboard will display all the data that was used for our prediction analysis. Here is a brief outline of how our dashboard is going to look like:

- First page: Create a Milestone Infographic Timeline
  -- The viewers will see a roadmap showing what is going to be presented
  
- Second page: Create a Bar Graph of Wins, Losses, and Ties of each team throughout the years
  -- Using the data from 2002-2021
  ![1](https://github.com/gespinal25/Final_Project/blob/main/NFL_2002-2021_bg.png)
  [Wins, Losses & Ties] (https://public.tableau.com/app/profile/gisell.espinal/viz/Book2_7_16553330982940/2002-2021?publish=yes)
  
- Third Page: Create a Bar/Scatter Graph or maybe Heat Map of team members and stats
  -- Each category is going to have its own graph
  -- The categories are WR, RB, QB and DST
  ![2](https://github.com/gespinal25/Final_Project/blob/main/RB_Stat.png)
  ![3](https://github.com/gespinal25/Final_Project/blob/main/WR_Stat.png)
  [WR Stats] (https://public.tableau.com/app/profile/gisell.espinal/viz/Book2_6_16553329944390/WRStat)
  
  [RB Stats] (https://public.tableau.com/app/profile/gisell.espinal/viz/Book2_5_16553328498850/RBStat)
  
  [QB Stats] (https://public.tableau.com/app/profile/gisell.espinal/viz/Book2_4_16553327591820/QBStat)
  
  [DST Stats] (https://public.tableau.com/app/profile/gisell.espinal/viz/Book2_16550915902550/DSTStat)
  
- Fourth Page: Create a packed bubbles for schedules
  -- Each category is going to have its own graph
  -- The categories are Strength of Schedules, Original Schedule, and Road/Home games
  ![4](https://github.com/gespinal25/Final_Project/blob/main/Strength_Sch.png)
  [Original Schedule] (https://public.tableau.com/app/profile/gisell.espinal/viz/Book2_8_16553371580940/Org_Sch_?publish=yes)
  
  [Home/Road Game Schedules] (https://public.tableau.com/app/profile/gisell.espinal/viz/Book2_9_16553372528910/RoadHomeSch_?publish=yes)
  
  [Strength of Schedules] (https://public.tableau.com/app/profile/gisell.espinal/viz/Book2_10_16553373536520/StrengthofSch_?publish=yes)
  
- Fifth Page: Create a visual graph of the prediction of this upcoming season
  -- Will determine what visual will fit best once I have the data
  -- Will show the predicted wins/losses for each game
![5](https://github.com/gespinal25/Final_Project/blob/main/2021_QB_Stats_Plotly.png)

## Results of our Model
Our final model used the sklearn logistic regression package and the data ranged from the 1999 to 2022 NFL seasons. The model calculated a rolling exponentially weighted Expected Points Added (EPA) based on passing offense/defense and rushing offense/defense of all 32 teams. After using the nflfastypy package to import and matplotlib, pandas, and numpy to clean and visualize the data, we looked at the passing EPA per play for our favorite teams, the Philadelphia Eagles, the Green Bay Packers, and the Buffalo Bills.

![6](https://github.com/gespinal25/Final_Project/blob/main/phi_epa.PNG)
![7](https://github.com/gespinal25/Final_Project/blob/main/gb_epa.PNG)
![8](https://github.com/gespinal25/Final_Project/blob/main/buf_epa.PNG)

After merging the schedule, we looked at the 2021 playoffs EPA for the home teams.
Lastly, we graphed the weighted importance of home and away EPAs and ran our data through the model to ultimately determine the win probability and correct predictions our model made. For the 2021 season, our model started at a 50% probability of correct predictions, which increased as the season went on, but then dropped drastically as the playoffs started. Our model predicted that for the 2022 season, the Buffalo Bills had a 63.8% win probability over the Green Bay Packers for the SuperBowl.

![9](https://github.com/gespinal25/Final_Project/blob/main/2021_home_team_epa.PNG)
![10](https://github.com/gespinal25/Final_Project/blob/main/2021_correct_predictions.PNG)
![11](https://github.com/gespinal25/Final_Project/blob/main/2021_week_18_correct_predicitions.PNG)

