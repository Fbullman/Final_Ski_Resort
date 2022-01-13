# Ski Resort Final Project

## First Segment 

### Selected Topic

Comparison of ski resort locations across Montana. Looking at snowfall levels vs. total ski visits. For more recent years, incorporating review data
in conjunction with weather data to predict future yearly ski visits at resorts throughout the state.

### Business Connections 

- Visitor projections would be useful to individual ski resorts to predict profit levels, staffing needs, set costs per ticket etc. 
- The projections could also be useful from an investor standpoint, if say an individual is looking to invest in a ski resort, which one has the best outlook
- Projections can also be useful to the state government as a basis to promote recreation tourism in Montana. 
- Does the data reveal any specifics as to how global warming is currently affecting the industry? What ramifications does this have.

### Reason Topic Was Selected

After nearly two years weathering lockdowns and quarantines, and a recent spike in COVID-19 infection rates, our team wanted to work with a topic 
that would inspire us to get outdoors, beat cabin fever and enjoy the coming winter months. Additionally, outside of a recreational interest, the ski
resort business is something that our team has little prior experience with. We would like to utilize this opportunity as a case study on how many
consulting projects work. Typically, outside consultants are thrown into relatively unknown industries, with narrow investigation parameters and must
work quickly to familiarize themselves with the business, the relevant factors impacting a client and produce useful deliverables to improve the 
operations or profitability of the business.

### Questions the Team Hopes to Answer 

Over the course of this project, the team will work to answer the following: 

- What are the historical snowfall levels for the ski resorts of interest? 
- How do snowfall levels impact the number of ski resort visits in a given season? 
- How can we use both the review data and the weather to better understand how each affects attendance levels? 
- Can we use this data to make accurate predictions regarding the number of ski visits at a given resort? 
- What other recommendations can we offer to the resort?

### Description of the Source Data

For this project, we will be working with historical weather data collected from the National Oceanic and Atmospheric Administration (NOAA). The data
collected includes the location of the weather station, the date of the reported data, the daily precipitation amount, the daily snowfall amount, the
current snow depth on that day, and the daily maximum and minimum temperatures.

https://www.ncdc.noaa.gov/cdo-web/ 

For the ski resort visitor data, we are working with data collected by the Institute for Tourism & Recreation at the Universtiy of Montana. The data
obtained reflects number of ski resort visitors in the state over nearly 30 years, beginning in 1988-1989 and ending in 2020-2021.

http://tourismresearchmt.org/

Review data can be manually sourced from sites such as Yelp.com or TripAdvisor.com. While these individual reviews are public, the sites do not allow
for a full scrape of the data. Therefore, if incorporated, review data will have to be manually entered before being analyzed. 

Additionally, we collected several sources of reference data from various web pages regarding the ski resorts, and elsewhere in
the United States. While most of these sources were not utilized directly in our data analysis, they offered reference points and are used in various
calculations to simulate close-to-life conditions.

https://www.nsaa.org/NSAA/Media/Industry_Stats.aspx
https://www.opensnowmap.org/


### Provisional Database Integration

After extracting the weather data, the ski resort vistor data and review data, it wil be cleaned the using Jupyter Notebook (Python and Pandas), 
the data will then be stored in a PostgreSQL database. This will allow for storage and compilation as the data is being extracted (year-by-year 
and month-by-month). Further, once datahas been imported, additional transformations and tables can be created in order to isolate relevant data 
and export it for further use.

### Provisional Machine Learning Model 

Using past weather, vistor and review data, the team will utilize Machine Learning with timeseries data and the ARIMA model to perform trend analysis
and predict future ski visits to the resorts of interest. 

### Results (Provisional)

Results will be presented using Tableau in order to demonstrate and relay important findings to leadership at the ski resort. 

### The Team 

- Fabiana Ullman
- Warren D. Kelly Jr.
- James Stawarz
