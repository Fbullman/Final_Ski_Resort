# Ski Resort Final Project

## Overview of Project

In this project, we are working with an upstart ski resort in (Vermont, Colorado, other?). The owner had hoped that they would be able to rely on 
natural snow and avoid the costs of producing their own snow. However, after their first ski season, the resort owner realized
that they had drastically underestimated the amount of snow they had needed to produce.

This year, they have hired the WFJ Consulting team to review available data and make predictions regarding the amount of snow the resort will
need to produce, the cost of such and additional questions regarding the profit potential of the ski resort.

### Purpose

The purpose of this project will be to help the ski owner make informed predictions about the amount of natural snowfall over the course of the ski
season. Using past weather data, we will use a regression model for each month to determine an estimated amount of snowfall the resort can rely on.
Then, using skiier and other weather data, we will aim to give the ski resort an estimated amount of snow to produce over the course of the season and
the cost of doing this.

## Results

To begin our project, we first had to clean and collect the data. 

Weather data was collected from: 

https://www.ncdc.noaa.gov/cdo-web/ 
https://www.kaggle.com/mrmarjo/resort-daily-snowfall-20092017/code

Skiier user data was collected from:

https://www.nsaa.org/NSAA/Media/Industry_Stats.aspx

Additional sources used as references: 
https://www.coloradoski.com/resort-statistics


### Project Work Flow

- Weather data is pulled from the National Oceanic and Atmospheric Administration for relevant months (Ski season)
- Data is cleaned using Python 
- Data is imported into SQL for storage and additional transformations and isolations. This will also allow for data from furture years to be added
and accounted for in future analysis
- Data is exported from SQL to Python in order to perform timelapse analysis for each relevant month to help identify trends.
- Data can also be imported into R to perform regression analysis
- Lastly, data exported from SQL can be imported into Tableau in order to create visualizations for the weather. 


### Students

Fabiana Ullman
Warren D. Kelly Jr.
James Stawarz
