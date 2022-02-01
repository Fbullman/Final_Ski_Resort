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
- What does the content of user reviews reveal as highly impactful in either a positive or negative experience? 
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

<img width="573" alt="vail_contact" src="https://user-images.githubusercontent.com/89322009/151720002-63f4933a-cb02-4c7a-8b4e-30c057579bfa.png">

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
previously data scrape of OnTheSnow.com, a website dedicated to planning ski trips. James worked to collect data from Yelp for each resort needed.


### Description of the Analysis Phase 

Beginning with the ski visitor data, a new dataset listing each of the ski resorts included was created. This list was updated to index the names of
the resorts to facilitate data connections later on. Further the list of resorts was updates with coordinate information taken from Wikipedia, and 
cross referenced with a region map of the state. 

Otherwise, the data is fairly clean to begin with. In fact, furhter additions to this data could be helpful to gain furhter insight. The data however
can and should be filtered down to only reflect the resorts of interest. On this, when viewing the data, certain resorts do not make for good analysis
subjects. For instance, the Marshall ski resort closed in 2003. Therefore, further analysis can be excluded for this resort.

Beginning with the weather data, the first challenge presented is determining which weather stations provide the best data for each resort. Using a pull
of the weather data for Montana from 1988, James created a list of weather stations and their coordinates. From there, the coordinates of the weather
stations were compared with the coordinates of the ski resorts. Filtering the data, allowed to create a subset of the stations that are located close
to the resort. The best fitting station was then recorded. 

![montana_resorts_stations](https://user-images.githubusercontent.com/89322009/152010932-2fda6236-0d18-4f65-ab24-bd724e4e210f.png)

Once recorded, each station was serached in the NOAA website to request the data for each station. Each station's weather records were then reviewed to
determine whether they cover the entrie period of interest. Following this, six resorts with full data were identified, Bridger, Discovery, Red Lodge,
Showdown, Snowbowl and Whitefish. These locations also represent the four regions of Montana that host ski resorts. Therefore, we feel that these
resorts offer a strong representation of resorts in the state.

Next, James worked to connect the visitor, weather and review data in a manner that facilitated statistical analysis and visualization. The first step was to filter the data and remove any weather data that did not occur during the ski season. The opening and closing dates for each resort vary. From the research, ski resorts tend to open after Thanksgiving and close sometime in early to mid April. To ensure that only relevant weather data was reviewed, the data was filtered to only include data for the months between December and March. 

Once filtered, James created season averages for each resort, including snow depth and temperature maximums, minimums and averages. With the season averages collected, the data was combined with the ski visitor data for each resort. Additionally, the season averages were also combined with the review data, so that each review lines up with the typical weather experienced that season.

Using R, correlation matricies were created to demonstrate the relationship between yearly visits and review ratings against average weather statistics. To accomplish this, cleaned datasets were needed that removed any N/A values, such as if a ski resort did not have snow depth results for a particular year. The tables were then imported to R for analysis. 

<img width="714" alt="weather_correlation_matrix" src="https://user-images.githubusercontent.com/89322009/152011632-9ff4c175-ea67-4093-9989-f811ee89fd01.png">

For yearly visits and weather averages, the strongest relationship was between average snow depth (-.576) and yearly visits. This r value indicates a moderate negative correlation between the two variables. This would suggest that as yearly visits increase, the snow depth decreases. Looking at the linear regression of these variables, the r-squared value is calculated to be .3319, which would indicate the about 33% of the variability in yearly visits is explained by the model. Additionally, the p-value calculated 6.842e-11, is less than the assumed .05 significance level. Therefore, we can state that the slope of our linear model is not zero.

<img width="457" alt="snow_depth_linear_regression" src="https://user-images.githubusercontent.com/89322009/152013021-67704316-6e4a-4251-916b-7f23a057ef71.png">

Regarding the correlation analysis of the weather and the ratings, no weather variables presented a strong correlation on the rating data. From this analysis we can state that there is not a significant correlation between the weather averages and the collected ratings data. 

<img width="740" alt="rating_correlation_matrix" src="https://user-images.githubusercontent.com/89322009/152014051-9ecdf01a-6805-4c6f-a7c2-91703005b3fc.png">

### Slide Deck 

A link to a provisional slide deck has been included below. As other portions of the analysis are completed, the slide deck will be updated to reflect
current progress. 

https://docs.google.com/presentation/d/1go-QYN6CNEwFXcEdnOdftVuREbx8iUtQk8BwkA_2T6s/edit?usp=sharing 

Currently, Fabiana has updated the slides with the current work completed. During the upcoming week, the team will have updated the slide deck with information regarding their respective portions.

### Database Integration

![Final_Ski_Resort_Project](https://user-images.githubusercontent.com/89553690/151897449-496c7082-dae2-41bf-9870-efcbe96304e6.png)

<img width="1000" alt="data_dictionary" src="https://user-images.githubusercontent.com/89553690/151897457-8c3debb5-f282-4bb7-a9d0-d7c900b4b7b9.png">

After extracting the weather data, the ski resort vistor data and review data, it wil be cleaned the using Jupyter Notebook (Python and Pandas), 
the data will then be stored in a PostgreSQL database. This will allow for storage and compilation as the data is being extracted (year-by-year 
and month-by-month). Additionally, the results from the machine learning model can be stored in the SQL database. Further, once data has been imported, 
additional transformations and tables can be created in order to isolate relevant data and export it for further use.

Over the next week, Warren will continue to store datasets compiled and update the ERD with further connections.

### Machine Learning Model - Natural Language Processing

For our Machine Learning model, the team utilized Natural Language Processing (NLP) to analyze the text of the individual ski resort reviews. To prepare the data for NLP, the review data from all sources, TripAdvisor, On the Snow and Yelp, was combined using Pandas. Then, the reviews were classified as either positive or negative. Positive reviews were considered either 4 or 5 stars. Negative reviews as 3 stars or less. Then, using PySpark and Google Collaboratory, the combined data was imported. From here, the dataframe was filtered to only reflect the positive or negative classification and the review text. 

<img width="319" alt="length" src="https://user-images.githubusercontent.com/89322009/151275662-2523d363-5866-4cbe-8fba-1cb3bcefc403.png">


The next step in the analysis is to import the functions required to build the NLP pipeline. The fuctions utilized are length, Tokenizer, StopWordsRemover, HasingTF, IDF and StringIndexer. First, we use the length function to length fuction to count the number of words in each review. Once done, NA rows are dropped as any null rows will cause errors when running the TF-IDF. 

<img width="296" alt="nlp_dataframe" src="https://user-images.githubusercontent.com/89322009/151275696-2fb7c089-1f15-4db2-860e-5508740db289.png">


Once done, we are ready to begin building the Pipeline needed to process the data in the NLP model. Essentially, each fuction serves a purpose and creates an output which will be used in the following function. The StringIndexer takes the class (positive or negative) and returns a 0, for positive or a 1 for negative. The tokenizer breaks each review down into a list of indiviual words. For example, "I enjoy data analytics." becomes I, enjoy, data, analytics,. StopRemover takes the tokenized data and removes certain words. These are words such as, "the", "than", 'what", "where" "why", etc. These are words that do not hold any significance to the overall sentiment of the review. 

With the tokens created and stop words removed, the tokens were converted to numbers so that they can be run through the TF-IDF model. This was accompished through hashing, which assigns an ID to each unique word. It is then mapped to an index and counted with a vector being returned. The Term Frequency - Inverse Document Frequency, or TF-IDF, measures the significance of a words in a review against the larger set of reviews. The term frequency multiplied by the inverse document frequency provides the TD-IDF value. Lastly, this value is inputed into a vectorization feature which combines the length and the TF-IDF values to trian the machine learning model. 

<img width="1107" alt="pipeline" src="https://user-images.githubusercontent.com/89322009/151275738-fbb3f532-0784-4ed1-bb26-abbba5cd272c.png">

After the data has been run through the pipeline, it is ready for the NLP machine learning model. The data is randomly split 70/30 to train and test the model. The machine learning model used is Naive Bayes. This is a classifer algorithm which determines the probability of an event based on new information related to the event. Here, the model is predicting whether a review will be classifed as positive or negative based on the review text. After running the model, a new prediction column is created, denoting either 0 (positive) or 1 (negative). 

Using the Binary Classification Evaluator, the prediction and length values are compared to produce an accuracy score. Ultimately, the NLP model created is currently at 50% accuracy in predicting whether the review text is positive or negative. 

<img width="933" alt="nlp_prediction" src="https://user-images.githubusercontent.com/89322009/151275778-e062db8d-ce5d-4736-9427-6fc4fc7447b7.png">


In its current state, the model is not ready for deployment as the accuracy level is relatively low. To further develop the model, additional soruces of review data could be inputted. This could provide the model with additional data to make better predictions and further refine the model. 

Another possibility is that the word choices between positive and negative reviews could be neglible. To futher evaluate this possibility, the reviews were split into two separate spreadsheets, one containing only positive reviews and others containing only negative. Using Google Collaboratory the reviews were imported and using SpaCy, the review text was tokenized. Using a word counting function, the individual tokens were counted. Then, with Pandas, the word counts were put into a dataframe and exported for further evaluation.

### Results (Provisional)


This image shows the ML sentiment analysis (by ski resort and review site)
![Sentiment analysis posi_neg_site](https://user-images.githubusercontent.com/88170636/151736324-1984d63b-76b7-49b7-92c7-1a5d4d54664f.png)

The plot image ilutrates, positive and negative words as a result from the ML- Natural Language processing model 
![newplot](https://user-images.githubusercontent.com/88170636/151737174-f12e63ea-4b9d-46c7-8529-a9be8f6ae15b.png)


The images bellow demonstrate the trend of visits for years filtered by positive and negative words used in the visitors reviews texts.

* Positive words
The trend of sum of Visits for Years.  Color shows details about Resort. The data is filtered on Word 
(top_positive_words), which keeps awesome, excellent, great and wonderful. The view is filtered on sum of Visits, which keeps all values.

![Trend_sum_positive_words](https://user-images.githubusercontent.com/88170636/151736058-1bbc9fd1-1d6c-45a7-8b2f-32e135e27e4d.png)


* Negative words
* The trend of sum of Visits for Years.  Color shows details about Resort. The data is filtered on Word 
(top_negative_words), which keeps parking, time, reasonable, and small. The view is filtered on sum of Visits, which keeps all values.

![Trend of sum of visits for years negative words](https://user-images.githubusercontent.com/88170636/151739618-61b3a436-b09b-4972-9394-3af4bb93e07d.png)


Image bellow demonstrate results of ML model Sentimental analysis

![Screenshot (315)](https://user-images.githubusercontent.com/88170636/151276028-8372d1ef-1846-4d67-806b-6506c79f1162.png)


Fabiana has begun working with Tableau and has set up a dashboard as she works to create visualizations with the data collected. Over the next week, she will continue to work on the visualizations. 

Together, the team will be updating the slide deck and brainstorming a storyboard to present the analysis completed and present a cohesive conclusion to the ski resorts.


### The Team 

- Fabiana Ullman
- Warren D. Kelly Jr.
- James Stawarz

![MONTANA_final](https://user-images.githubusercontent.com/88170636/151737200-33f812df-7b28-4cc5-92ff-7f5c7e0c56a6.png)

