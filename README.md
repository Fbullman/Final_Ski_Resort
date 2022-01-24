# Ski Resort Analysis Final Project

## Second Segement - Status Update

### Selected Topic

For this project, we will be working to create a comparison of ski resort locations across Montana. Our comparison will focus on snowfall levels, total
ski visits and review data gathered on the various resorts. We will be aiming to incorporate the data sources to visualize the correlations between the weather
and review data for the resorts throughout the state.


### Reason Topic Was Selected

After nearly two years weathering lockdowns and quarantines, and a recent spike in COVID-19 infection rates, our team wanted to work with a topic 
that would inspire us to get outdoors, beat cabin fever and enjoy the coming winter months. Additionally, outside of a recreational interest, the ski
resort business is something that our team has little prior experience with. We would like to utilize this opportunity as a case study on how many
consulting projects work. Typically, outside consultants are thrown into relatively unknown industries, with narrow investigation parameters and must
work quickly to familiarize themselves with the business, the relevant factors impacting a client and produce useful deliverables to improve the 
operations or profitability of the business.

### Business Connections 

- Visitor projections would be useful to individual ski resorts to predict profit levels, staffing needs, set costs per ticket etc. 
- The projections could also be useful from an investor standpoint, if say an individual is looking to invest in a ski resort, which one has the best outlook.
- Projections can also be useful to the state government as a basis to promote recreation tourism in Montana. 
- Visualizations of the potential correlation between weather and review data can demonstrate the effect of weather on user experience.
- Natural Language Processing model developed will identify key words frequently used in positive and negative reviews. This information could help resorts better understand the factors leading to a positive or negative user experience.

### Questions the Team Hopes to Answer 

Over the course of this project, the team will work to answer the following: 

- What are the historical snowfall levels for the ski resorts of interest? 
- How do snowfall levels impact the number of ski resort visits in a given season? 
- Is there a correlation between the weather and user experience?
- What does the content of user reviews reveal as highly impactful in either a positive or negative expereince? 
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

Review data has been gathered from three sources currently, OnTheSnow.com, TripAdvisor and Yelp. Furhter opportunites for gathering review data could
be from Google Reviews or other review websites. 

Additionally, we collected several sources of reference data from various web pages regarding the ski resorts, and elsewhere in
the United States. While most of these sources were not utilized directly in our data analysis, they offered reference points and are used in various
calculations to simulate close-to-life conditions.

https://www.nsaa.org/NSAA/Media/Industry_Stats.aspx
https://www.opensnowmap.org/

### Description of the Data Exploration Phase 

Our data exploration phase began with online researching ski resort locations throughout the United States. Ultimately, the team was able to
source data collected by the University of Montana on the annual ski visits to sixteen ski resorts in the state between 1988 and 2021. The visitor data is relatively 
scare, only listing the year, the resort and the amount of visitors. In an attempt to remedy this, Fabiana worked to reach out to various resorts
to obtain furhter data. To date, no fruitful responses to these requests have been received.

With the visitor data in hand, the team was then able to progress in identifying factors that would impact the amount of visitors a ski resort received
in a given year. To this end, weather, or more specifically snow, would be a logical influence on the amount of skiers a resort receives. The thought 
being, the more fresh snow, the more appealing the resort. For the weather data, the National Oceanic and Atmospheric Administration presented as a 
reliable source of information. With weather measuring stations throughout the United States, the agency retains historic weather data which is also 
easy to access. Depending on the station, a variety of weather statistics are recorded including the date of the reported data, the daily precipitation
amount, the daily snowfall amount, the current snow depth on that day, and the daily maximum and minimum temperatures. However, not every station
records each metric, while other stations do not record for the entire period of interest. Most relevent snow data comes in the form of snow depth and
is reliably recorded by stations beginning in the early 00's. 

Lastly, to expand on possible analysis opportunities, the team began to pull review data on each of the ski resorts. Websites such as TripAdvisor and 
Yelp were identified as possible sources of data. Warren developed a web scraping code to pull review data from TripAdvisor. Fabiana identified a 
previously data scrape of OnTheSnow.com, a website dedicated to planning ski trips. James worked to enter data from Yelp for each resort needed.


### Description of the Analysis Phase 

Beginning with the ski visitor data, a new dataset listing each of the ski resorts included was created. This list was updated to index the names of
the resorts to facilitate data connections later on. Further the list of resorts was updates with coordinate information taken from Wikipedia, and 
cross referenced with a region map of the state. 

Potential opportunities to analyze this data include creating yearly averages of ski visit data across the state, and for each region. The data points
themselves can also be graphed to visualize the data. Comparisons of each resort of interest vs. the rest of the resorts in the state could be benfical
in identifying trends. James can begin working on graphing this data this weekened (1/21 to 1/23).

Otherwise, the data is fairly clean to begin with. In fact, furhter additions to this data could be helpful to gain furhter insight. The data however
can and should be filtered down to only reflect the resorts of interest. On this, when viewing the data, certain resorts do not make for good analysis
subjects. For instance, the Marshall ski resort closed in 2003. Therefore, further analysis can be excluded for this resort.

Beginning with the weather data, the first challenge presented is determining which weather stations provide the best data for each resort. Using a pull
of the weather data for Montana from 1988, James created a list of weather stations and their coordinates. From there, the coordinates of the weather
stations were compared with the coordinates of the ski resorts. Filtering the data, allowed to create a subset of the stations that are located close
to the resort. The best fitting station was then recorded. 

Once recorded, each station was serached in the NOAA website to request the data for each station. Each station's weather records were then reviewed to
determine whether they cover the entrie period of interest. Following this, six resorts with full data were identified, Bridger, Discovery, Red Lodge,
Showdown, Snowbowl and Whitefish. These locations also represent the four regions of Montana that host ski resorts. Therefore, we feel that these
resorts offer a strong representation of resorts in the state.

Looking at this upcoming week, James will work to combine and finalize the cleaning of all review and weather data. The review data compiled will need to be combined, classified and have any null values removed. The weather data will need to be filtered (to only focus on the ski season, November to April) and then averages of temperature and snowfall levels can be taken for each month. Once these calculations have been made, they will need to be added in one master spreadsheet.

James can also work to create a GeoJSON map of the ski resorts and the weather data collection center where the measurements were captured. 

### Slide Deck 

A link to a provisional slide deck has been included below. As other portions of the analysis are completed, the slide deck will be updated to reflect
current progress. 

https://docs.google.com/presentation/d/1go-QYN6CNEwFXcEdnOdftVuREbx8iUtQk8BwkA_2T6s/edit?usp=sharing 

During the upcoming week, the team will have updated the slide deck with information regarding their respective portions.

### Database Integration

<img width="468" alt="FInal_Project_ERD" src="https://user-images.githubusercontent.com/89553690/150780145-d52f0288-d62b-4cbf-a851-5102c2a90476.png">

After extracting the weather data, the ski resort vistor data and review data, it wil be cleaned the using Jupyter Notebook (Python and Pandas), 
the data will then be stored in a PostgreSQL database. This will allow for storage and compilation as the data is being extracted (year-by-year 
and month-by-month). Additionally, the results from the machine learning model can be stored in the SQL database. Further, once data has been imported, 
additional transformations and tables can be created in order to isolate relevant data and export it for further use.

Status - Warren will be working over the next week to create a Postgres database and set up the ERD. 

### Machine Learning Model - Natural Language Processing

For our Machine Learning model, the team is working to analyze the text of individual reviews with Natural Language Processing (NLP). Using PySpark and Google Collab, James has imported the combined review data, created a pipeline which completes the tokenization, stop word removal, the TF-IDF and vectorization of the data. The data has also been run through a fuctional NLP model which predicts whether a review is positive or negative based on the content of the review text. 

Ultimately, the NLP model created is currently at 50% accuracy in predicting whether the review text is positive or negative. Ideas for further evaluation with this model could be provide the model with additional reviews to facilitate further calibration of the model.

Looking forward, James would like to create two spreadsheets with the review data, one with positive only review and one with only negative reviews. The spreadsheets can then be tokenized with SpaCy, and subsequently counted to demonstrate which words appear most frequently in positive and negative reviews.

### Results (Provisional)

Results will be presented using Tableau in order to demonstrate and relay important findings to leadership at the ski resort. 

Looking to next weekend (1/28 to 1/30) the team will work to begin importing data into Tableau and creating visualizations that reflect the analysis
completed.


### The Team 

- Fabiana Ullman
- Warren D. Kelly Jr.
- James Stawarz
