#!/usr/bin/env python
# coding: utf-8

# In[17]:


import pandas as pd
import plotly.graph_objects as go
import nflfastpy as npy

# load data
df_2021 = npy.load_pbp_data(year=2021)
df_players = npy.load_roster_data(year=2021)
df_logo = npy.load_team_logo_data()


# In[8]:


df_logo.columns


# In[9]:


df_2021.columns


# In[16]:


df_teams.columns


# In[10]:


# remove two point attempts
df_2021 = df_2021[df_2021["two_point_attempt"] == False]


# In[11]:


# filter to pass plays
df_2021 = df_2021[df_2021["play_type"] == "pass"]


# In[18]:


df_2021 = df_2021.merge(df_players[["gsis_id", "full_name"]], left_on="passer_player_id", right_on="gsis_id")


# In[19]:


df_2021["full_name"].unique()


# In[22]:


# join with team table to get team color for plot
df_2021 = df_2021.merge(df_logo[["team_abbr", "team_color"]], left_on="posteam", right_on="team_abbr")


# In[23]:


# get total passing yards and touchdowns by week
df_agg = (
    df_2021.groupby(["full_name", "team_abbr", "team_color", "week"], as_index=False)
    .agg({"passing_yards": "sum", "pass_touchdown": "sum"})
)


# In[24]:


df_agg[df_agg["full_name"] == "Josh Allen"]


# In[25]:


fig = go.Figure()
for name, values in df_agg.groupby("full_name"):
    if values["passing_yards"].sum() > 1500:
        fig.add_trace(
            go.Scatter(
                x=values["week"], 
                y=values["passing_yards"].cumsum(), 
                name=name, 
                mode="markers+lines", 
                line_color=values.iloc[0].team_color,
                hovertemplate=f"<b>{name}</b><br>%{{y}} yds through week %{{x}}<extra></extra>"
            )
        )
    
fig.update_layout(
    font_family="Averta, sans-serif",
    hoverlabel_font_family="Averta, sans-serif",
    xaxis_title_text="Week",
    xaxis_title_font_size=18,
    xaxis_tickfont_size=16,
    yaxis_title_text="Passing Yards",
    yaxis_title_font_size=18,
    yaxis_tickfont_size=16,
    hoverlabel_font_size=16,
    legend_font_size=16,
    height=1000,
    width=1000
)
    
fig.show()


# In[ ]:




