# CO River Basin Water Supply

## Google Slides Presentation
https://docs.google.com/presentation/d/1nw6eYH_HWEkV3ZbEHgJSRjrHohP9-Oclbgn7JjEWED8/edit?usp=sharing

- Selected topic
  - Upper & Lower CO Basin Water Usage
- Reason why we selected this topic
  - Water is one of our most precious resources because humanity couldn't exist without it. In addition to its key role in our survival, water is essential in nearly every facet of modern life from industrial processes to domestic pursuits. However, water is omnipresent and so we don't always take the time to consider how much we use, when and where we use it, and why we need it. We selected this topic due to its high importance and relevance to our society. We want to predict how our water usage and supply might look in the future to make recommendations for conservation and preparation.
- Description of our source of data
  - The USGS, U.S. Geological Survey, website maintains national data bases of water-use information. The data are collected and compiled every five years for each State, the District of Columbia, Puerto Rico, and the U.S. Virgin Islands. We have compiled the datasets from 1985-2015, 7 total, into a csv file and have sorted by the 4 states in the upper CO basin. The data contains water-use information that looks at how each of the 4 states uses water,the total amount of water withdrawals, and withdrawals broken down by type of water (fresh or saline) and withdrawal type (groundwater and surface water). The amount of withdrawals for water-use categories is also listed. All numbers are measured in million gallons per day (Mgal/d). 
- Questions we hope to answer with the data
   -  When will the water run out? 
   -  What is the predicted decrease of water levels? 
   -  How are Colorado river water levels compared to other areas?? 
   -  Which factors have the most impact in water reduction?

### Data Exploration Phase

The group continues to clean, append and merge datasets. Our data has a significant number of columns and we have spent time determining which of these columns have data pertinent to our project and getting rid of the ones that do not. We are reviewing our data to see what exactly it can tell us and if any additional datasets are needed to help predict and analyze results. 

We are also prepping code for machine learning and trying to determine whether our project is better suited for a linear regression to analyze correlation, or time series model to analyze forecasting. 

### Analysis Phase

The states we are analyzing are Colorado, California, Arizona, Utah, Wyoming, Nevada, and New Mexico. All 7 states are part of the Colorado River Basin. The Colorado River flows for approx. 1,450 miles and provides water to all 7 states. The years we are analyzing are 1985, 1990, 1995, 2000, 2005, 2010, and 2015. The analysis phase of the project will involve analyzing the total withdrawals and total domestic water use in million gallons per day (Mgal/d) per state and per year. We will look at how each state uses water by looking at withdrawals and withdrawal type (groundwater and surface water). 

### States Relying on Colorado River Basin Water Supply:

![Upper_Lower_Basin](https://user-images.githubusercontent.com/105175961/199853643-227281eb-0fda-4b28-a371-13f5b090a121.png)
  
## Machine Learning Model
### Linear Regression Model

#### Description of data preprocessing

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

#### Description of current accuracy score

## Database
### ERD
### Sample ERD
![ERD_Database](https://user-images.githubusercontent.com/105477190/199865016-7e40cd30-6bda-43b5-a750-424b16ff89d6.png)

How is it integrated into our database?
- The final database will consist of all 7 datasets combined into a singular csv file. The way we do this will be through python pandas. We have cleaned the data, renamed columns, and added columns where necessary. The datasets are connected by state and year.

How does it work with the code?
- It works with the code to outline where the commonalities are within the datasets so that we could easily combine the datasets and organize the structure.

## Dashboard

### Tools Used to Create Final Dashboard 

The group plans on displaying our findings on a website. Our geographical topic lends well to using maps created in Tableau to show analysis and predictions based on usage and availability. We will also use Tableau to create charts relevant to our findings, and incorporate all of these visuals into Google Slides to pair with our analysis and display on our site. We will also use interactive elements in our website design, buttons to select individual states and/or years and see a set of maps, or possibly a drop down or search filter. 

### Description of Interactive Elements

We will also use interactive elements in our website design in relation to a table, buttons to select individual states and/or years to see a set of maps, or possibly a drop down or search filter.

### Website Storyboard



![Website_Storyboard](https://user-images.githubusercontent.com/105175961/200971400-2180b535-68c0-4325-9d87-fb3a08bf20aa.png)


### Tableau Link
https://public.tableau.com/app/profile/jordan.pelletier1563/viz/WaterAnalysisStory/WaterAnalysisStory

## Technologies, languages, tools, algorithms used

- Python Jupyter Notebook
- HTML/Javascript
- Tableau
- Postgress/PGAdmin


