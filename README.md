# Ski Resort Final Project

## First Segement 

### Selected Topic

For this project, we have decided to work with the Telluride Ski Resort in Mountain Village, Colorado. As snow is essential to the ski resort business,
we will working to predict the amount of natural snow the ski resort will receive in the upcoming 2022-2023 ski season. The predictions are crucial to
the business as they will be used to create cost estimates how much artificial snow the resort will need to produce in order to keep the resort 
operating optimally.

### Reason Topic Was Selected

After nearly two years weathering lockdowns and quarantines, and a recent spike in COVID-19 infection rates, our team wanted to work with a topic 
that would inspire us to get outdoors, beat cabin fever and enjoy the coming winter months. Additionally, outside of a recreational interest, the ski
resort business is something that our team has little prior experience with. We would like to utilize this opportunity as a case study on how many
consulting projects work. Typically, outside consultants are thrown into relatively unknown industries, with narrow investigation parameters and must
work quickly to familiarize themselves with the business, the relevant factors impacting a client and produce useful deliverables to improve the 
operations or profitability of the business.

### Questions the Team Hopes to Answer 

Over the course of this project, the team will work to answer the following: 

- What are the historical snowfall levels for the area of interest? 
- What is the optimal snow depth for the ski resort?
- Can we develop a statisical model that can used to predict the snowfall levels for future years? 
- Using the estimated snowfall levels, can we estimate the amount of artifical snow production needed?
- How can we use these estimates to determine the future costs of artifical snow production? 
- What other recommendations can we offer to the resort?

### Description of the Source Data

For this project, we will be working primarily with historical weather data collected from the National Oceanic and Atmospheric Administration (NOAA). The data
collected includes the location of the weather station, the date of the reported data, the daily precipitation amount, the daily snowfall amount, the
current snow depth on that day, and the daily maximum and minimum temperatures.

https://www.ncdc.noaa.gov/cdo-web/ 

Additionally, we collected several sources of reference data from various web sources regarding the ski resorts located in Colorado, and elsewhere in
the United States. While most of these sources were not utilized directly in our data analysis, they offered reference points and are used in various
calculations to simulate close-to-life conditions.

https://www.nsaa.org/NSAA/Media/Industry_Stats.aspx
https://www.coloradoski.com/resort-statistics
https://www.coloradoski.com/resort-season-dates
https://www.opensnowmap.org/
https://www.kaggle.com/mrmarjo/resort-daily-snowfall-20092017/code

### Provisional Database Integration

After extracting the weather data from the NOAA website, and cleaning the data using Jupyter Notebook (Python and Pandas), the data will be stored in
a PostgreSQL database. This will allow for storage and compilation as the data is being extracted (year-by-year and month-by-month). Further, once data
has been imported, additional transformations and tables can be created in order to isolate relevant data and export it for further use.

### Provisional Machine Learning Model 

Using past weather data, the team will utilize Machine Learning with timeseries data and the ARIMA model to perform trend analysis and predict future
snowfall levels. Using the natural snow levels as a starting point, the team can then calculate an estimate of artifical snow needed by the resort.

### Results (Provisional)

Results will be presented using Tableau in order to demonstrate and rely important findings to leadership at the ski resort. 

### The Team 

- Fabiana Ullman
- Warren D. Kelly Jr.
- James Stawarz
