# CO River Basin Water Supply

### Google Slides Presentation
https://docs.google.com/presentation/d/1nw6eYH_HWEkV3ZbEHgJSRjrHohP9-Oclbgn7JjEWED8/edit?usp=sharing

## Purpose
Water is one of our most precious resources because humanity couldn't exist without it. In addition to its key role in our survival, water is essential in nearly every facet of modern life from industrial processes to domestic pursuits. However, water is omnipresent and so we don't always take the time to consider how much we use, when and where we use it, and why we need it. We selected this topic due to its high importance and relevance to our society. We want to predict how our water usage and supply might look in the future to make recommendations for conservation and preparation.

## Datasource Description
The USGS, U.S. Geological Survey, website maintains national data bases of water-use information. The data are collected and compiled every five years for each State, the District of Columbia, Puerto Rico, and the U.S. Virgin Islands. We have compiled the datasets from 1985-2015, 7 total, into a csv file and have sorted by the 7 states in the CO basin. The data contains water-use information that looks at how each of the 4 states uses water,the total amount of water withdrawals, and withdrawals broken down by type of water (fresh or saline) and withdrawal type (groundwater and surface water). The amount of withdrawals for water-use categories is also listed. All numbers are measured in million gallons per day (Mgal/d). 

## Questions we hope to answer with the data
   -  Where is the water going and how do the 7 states compare?
   -  What is the predicted decrease of water levels? 
   -  Which factors have the most impact in water reduction?

## States Relying on Colorado River Basin Water Supply:

![Upper_Lower_Basin](https://user-images.githubusercontent.com/105175961/199853643-227281eb-0fda-4b28-a371-13f5b090a121.png)

## Data Exploration Phase

The group continues to clean, append and merge datasets. Our data has a significant number of columns and we have spent time determining which of these columns have data pertinent to our project and getting rid of the ones that do not. We are reviewing our data to see what exactly it can tell us and if any additional datasets are needed to help predict and analyze results. 

We are also prepping code for machine learning and trying to determine whether our project is better suited for a linear regression to analyze correlation, or time series model to analyze forecasting. 

## Analysis Phase

The states we are analyzing are Colorado, California, Arizona, Utah, Wyoming, Nevada, and New Mexico. All 7 states are part of the Colorado River Basin. The Colorado River flows for approx. 1,450 miles and provides water to all 7 states. The years we are analyzing are 1985, 1990, 1995, 2000, 2005, 2010, and 2015. The analysis phase of the project will involve analyzing the total withdrawals and total domestic water use in million gallons per day (Mgal/d) per state and per year. We will look at how each state uses water by looking at withdrawals and withdrawal type (groundwater and surface water). 
  
## Machine Learning Model
### Random Forrest Regression Model

#### Description of feature engineering and the feature selection, including the decision-making process

We decided to focus on using the features invovling the total withdrawals of each type (public supply, industrial, mining, etc...) .We noticed several columns that were columns that were combinations of several other columns. This led us to mainly using columns with "totl" which were primarily totals of all the relevant data of that type. For example, the public supply fresh groundwater withdrawals (ps-wgwfr) plus the public supply fresh surface withdrawals (ps-wswfr) combined to make the public supply fresh total (ps-wfrto). These columns we could remove from the feature selection.

#### Description of how data was split into training and testing sets
- The data was split for years before 2010 and test data to years after as shown below:
<img width="808" alt="Screen Shot 2022-11-17 at 6 07 44 PM" src="https://user-images.githubusercontent.com/105477190/202593126-5a230b5a-fecb-450d-b759-7bebe53dab43.png">

#### Explanation of model choice, including limitations and benefits
- Linear regression is used to predict continuous variables. It takes in a set of factors to attempt to learn patterns from them to predict a numerical value. The model predicts the result based on learned patterns if new data is added. We chose this model to predict what the water levels will be in the years to come.
- Random Forest Regression is a supervised learning algorithm that uses branches to predict data, in which helps create more results by using mulitple models. This kind of model is helpful when dealing with multiple strands of data. 

#### Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)
- We explored different models to test their outcomes. 
- Random Forest Regression was the most successful out of the two methods used for the machine learning model. We found that the first method, Linear Regression Algorithm, was not useful for the outcome we want to predict. 
- With the dataset we are using, the machine learning model is not successful in reading the data. We have now shifted to use other methods of interpreting our dataset, i.e Tableau.
#### Description of how they have trained the model thus far, and any additional training that will take place
The training of the model has been unsuccessful, there are columns in our dataset with information that are hindering an accurate prediction. Going forward we will need to figure out which columns are causing our model to be unsuccessful. 
#### Description of current accuracy score
Random Forest Regression score = 0.9691657678491484

.<img width="329" alt="Screen Shot 2022-11-21 at 4 59 29 PM" src="https://user-images.githubusercontent.com/105477190/203440543-e0b20e72-01d9-4fbf-90d6-d33d88fe1a87.png">

## Database

### Postgress/PGAdmin
We created the database by splitting up the categories into fresh, saline and total OR splitting them up by main category (Irrigation, Agriculture, Mining, etc.) to analyze data in those subcategories. 

### ERD

<img width="467" alt="image" src="https://user-images.githubusercontent.com/105477190/203128984-17c1805b-91e6-4e37-9a5e-0f8b1b718e9a.png">

### Database Tables

![image (8)](https://user-images.githubusercontent.com/105477190/203435453-73e33ca3-375a-4fba-94b2-9deb0a29797e.png)
![image (7)](https://user-images.githubusercontent.com/105477190/203435460-79f7d956-41a0-46f6-91b5-c9a8322da74d.png)
![image (6)](https://user-images.githubusercontent.com/105477190/203435470-559ad6ea-caf6-484d-8968-adc720c134fc.png)
![image (5)](https://user-images.githubusercontent.com/105477190/203435483-0cb35e28-51ed-4691-af0b-f6b4b5d908b9.png)
![image (4)](https://user-images.githubusercontent.com/105477190/203435494-72fd8ee4-5f76-4c91-9440-b851a24d025b.png)

## Dashboard 

The group plans on displaying our findings on a website. Our geographical topic lends well to using maps created in Tableau to show analysis and predictions based on usage and availability. We will also use Tableau to create charts relevant to our findings, and incorporate all of these visuals into Google Slides to pair with our analysis and display on our site. We will also use interactive elements in our website design, buttons to select individual states and/or years and see a set of maps, or possibly a drop down or search filter. 

### Description of Interactive Elements

We will also use interactive elements in our website design in relation to a table, buttons to select individual states and/or years to see a set of maps, or possibly a drop down or search filter.

### Website Storyboard



![Website_Storyboard](https://user-images.githubusercontent.com/105175961/200971400-2180b535-68c0-4325-9d87-fb3a08bf20aa.png)


### Tableau Link
https://public.tableau.com/app/profile/jordan.pelletier1563/viz/WaterAnalysisStory/WaterAnalysisStory

<img width="1002" alt="Screen Shot 2022-11-22 at 3 40 56 PM" src="https://user-images.githubusercontent.com/105477190/203435974-2afce7eb-7612-48f5-954f-9c6f6fdce861.png">

## Results

### Analysis Results

The 7 states we analyzed are ranked from low to high out of all 50 states by the total amount of water withdrawals in 2015. Withdrawals are then broken down by type of water (fresh or saline) and withdrawal type (groundwater and surface water). The amount of withdrawals for water-use categories is also listed. All numbers are measured in million gallons per day (Mgal/d). ranked below out of all 50 states with their results based on the 2015 dataset:

#### #35. New Mexico
Total withdrawals: 2,900 million gallons per day (Mgal/d)
- Fresh water withdrawals: 2,810 Mgal/d
- Saline water withdrawals: 89 Mgal/d
- Surface water withdrawals: 1,460 Mgal/d
- Groundwater withdrawals: 1,440 Mgal/d

Total domestic water use: 170 Mgal/d (81 gal per capita, #20 highest for all states)
- Public supply: 262 Mgal/d (81 gal per capita, #21 highest for all states)
--- 1.8 million people served (86% of population)
- Self-supplied: 25 Mgal/d (84 gal per capita, #18 highest for all states)
--- 292,000 people served (14% of population)

Non-public total water use: 2,609 Mgal/d
- Irrigation: 2,370 Mgal/d
- Livestock: 32 Mgal/d
- Aquaculture: 24 Mgal/d
- Industrial: 3 Mgal/d (fresh), 0 Mgal/d (saline)
- Mining: 57 Mgal/d (fresh), 89 Mgal/d (saline)
- Thermoelectric power: 34 Mgal/d (fresh), 0 Mgal/d (saline)

#### #34. Nevada
Total withdrawals: 2,960 million gallons per day (Mgal/d)
- Fresh water withdrawals: 2,880 Mgal/d
- Saline water withdrawals: 82 Mgal/d
- Surface water withdrawals: 1,520 Mgal/d
- Groundwater withdrawals: 1,440 Mgal/d

Total domestic water use: 365 Mgal/d (126 gal per capita, #6 highest for all states)
- Public supply: 531 Mgal/d (122 gal per capita, #7 highest for all states)
--- 2.7 million people served (93% of population)
- Self-supplied: 36 Mgal/d (186 gal per capita, #1 highest for all states)
--- 193,000 people served (7% of population)

Non-public total water use: 2,401 Mgal/d
- Irrigation: 2,070 Mgal/d
- Livestock: 5 Mgal/d
- Aquaculture: 34 Mgal/d
- Industrial: 6 Mgal/d (fresh), 0 Mgal/d (saline)
- Mining: 195 Mgal/d (fresh), 11 Mgal/d (saline)
- Thermoelectric power: 9 Mgal/d (fresh), 71 Mgal/d (saline)

#### #29. Utah
Total withdrawals: 4,230 million gallons per day (Mgal/d)
- Fresh water withdrawals: 3,880 Mgal/d
- Saline water withdrawals: 350 Mgal/d
- Surface water withdrawals: 3,080 Mgal/d
- Groundwater withdrawals: 1,150 Mgal/d

Total domestic water use: 506 Mgal/d (169 gal per capita, #2 highest for all states)
- Public supply: 627 Mgal/d (169 gal per capita, #3 highest for all states)
--- 2.9 million people served (98% of population)
- Self-supplied: 10 Mgal/d (169 gal per capita, #3 highest for all states)
--- 61,400 people served (2% of population)

Non-public total water use: 3,593 Mgal/d
- Irrigation: 3,030 Mgal/d
- Livestock: 16 Mgal/d
- Aquaculture: 83 Mgal/d
- Industrial: 54 Mgal/d (fresh), 79 Mgal/d (saline)
- Mining: 3 Mgal/d (fresh), 258 Mgal/d (saline)
- Thermoelectric power: 61 Mgal/d (fresh), 8 Mgal/d (saline)

#### #25. Arizona
Total withdrawals: 5,980 million gallons per day (Mgal/d)
- Fresh water withdrawals: 5,980 Mgal/d
- Saline water withdrawals: 0 Mgal/d
- Surface water withdrawals: 3,220 Mgal/d
- Groundwater withdrawals: 2,760 Mgal/d

Total domestic water use: 987 Mgal/d (145 gal per capita, #4 highest for all states)
- Public supply: 1,200 Mgal/d (146 gal per capita, #4 highest for all states)
--- 6.6 million people served (97% of population)
- Self-supplied: 24 Mgal/d (110 gal per capita, #10 highest for all states)
--- 218,000 people served (3% of population)

Non-public total water use: 4,761 Mgal/d
- Irrigation: 4,530 Mgal/d
- Livestock: 39 Mgal/d
- Aquaculture: 35 Mgal/d
- Industrial: 6 Mgal/d (fresh), 0 Mgal/d (saline)
- Mining: 68 Mgal/d (fresh), 0 Mgal/d (saline)
- Thermoelectric power: 84 Mgal/d (fresh), 0 Mgal/d (saline)


#### #16. Wyoming
Total withdrawals: 8,140 million gallons per day (Mgal/d)
- Fresh water withdrawals: 8,050 Mgal/d
- Saline water withdrawals: 97 Mgal/d
- Surface water withdrawals: 7,400 Mgal/d
- Groundwater withdrawals: 748 Mgal/d

Total domestic water use: 91 Mgal/d (156 gal per capita, #3 highest for all states)
- Public supply: 101 Mgal/d (176 gal per capita, #2 highest for all states)
--- 467,000 people served (80% of population)
- Self-supplied: 9 Mgal/d (75 gal per capita, #21 lowest for all states)
--- 119,000 people served (20% of population)

Non-public total water use: 8,036 Mgal/d
- Irrigation: 7,790 Mgal/d
- Livestock: 16 Mgal/d
- Aquaculture: 29 Mgal/d
- Industrial: 8 Mgal/d (fresh), 0 Mgal/d (saline)
- Mining: 45 Mgal/d (fresh), 97 Mgal/d (saline)
- Thermoelectric power: 52 Mgal/d (fresh), 0 Mgal/d (saline)

#### #9. Colorado
Total withdrawals: 10,300 million gallons per day (Mgal/d)
- Fresh water withdrawals: 10,300 Mgal/d
- Saline water withdrawals: 24 Mgal/d
- Surface water withdrawals: 8,800 Mgal/d
- Groundwater withdrawals: 1,530 Mgal/d

Total domestic water use: 672 Mgal/d (123 gal per capita, #7 highest for all states)
- Public supply: 844 Mgal/d (123 gal per capita, #6 highest for all states)
--- 5.2 million people served (95% of population)
- Self-supplied: 35 Mgal/d (123 gal per capita, #5 highest for all states)
--- 286,000 people served (5% of population)

Non-public total water use: 9,447 Mgal/d
- Irrigation: 9,000 Mgal/d
- Livestock: 33 Mgal/d
- Aquaculture: 260 Mgal/d
- Industrial: 84 Mgal/d (fresh), 0 Mgal/d (saline)
- Mining: 8 Mgal/d (fresh), 24 Mgal/d (saline)
- Thermoelectric power: 37 Mgal/d (fresh), 0 Mgal/d (saline)

#### #1. California
Total withdrawals: 28,800 million gallons per day (Mgal/d)
- Fresh water withdrawals: 25,600 Mgal/d
- Saline water withdrawals: 3,160 Mgal/d
- Surface water withdrawals: 11,300 Mgal/d
- Groundwater withdrawals: 17,400 Mgal/d

Total domestic water use: 3,350 Mgal/d (86 gal per capita, #17 highest for all states)
- Public supply: 5,150 Mgal/d (86 gal per capita, #17 highest for all states)
--- 37.7 million people served (96% of population)
- Self-supplied: 127 Mgal/d (88 gal per capita, #16 highest for all states)
--- 1.4 million people served (4% of population)

Non-public total water use: 23,503 Mgal/d
- Irrigation: 19,000 Mgal/d
- Livestock: 183 Mgal/d
- Aquaculture: 727 Mgal/d
- Industrial: 399 Mgal/d (fresh), 0 Mgal/d (saline)
- Mining: 46 Mgal/d (fresh), 272 Mgal/d (saline)
- Thermoelectric power: 36 Mgal/d (fresh), 2,840 Mgal/d (saline)

### Analysis Recommendations 


### What would we have done differently?


## Technologies, languages, tools, algorithms used

- Python Jupyter Notebook
- HTML/Javascript
- Tableau
- Postgress/PGAdmin


