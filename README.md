# CO River Basin Water Supply

### Google Slides Presentation
https://docs.google.com/presentation/d/1nw6eYH_HWEkV3ZbEHgJSRjrHohP9-Oclbgn7JjEWED8/edit?usp=sharing

## Purpose
Water is one of our most precious resources because humanity couldn't exist without it. In addition to its key role in our survival, water is essential in nearly every facet of modern life from industrial processes to domestic pursuits. However, water is omnipresent and so we don't always take the time to consider how much we use, when and where we use it, and why we need it. We selected this topic due to its high importance and relevance to our society. We want to predict how our water usage and supply might look in the future to make recommendations for conservation and preparation.

## Datasource Description
The USGS, U.S. Geological Survey, website maintains national data bases of water-use information. The data are collected and compiled every five years for each State, the District of Columbia, Puerto Rico, and the U.S. Virgin Islands. We have compiled the datasets from 1985-2015, 7 total, into a csv file and have sorted by the 7 states in the CO basin. The data contains water-use information that looks at how each of the 4 states uses water,the total amount of water withdrawals, and withdrawals broken down by type of water (fresh or saline) and withdrawal type (groundwater and surface water). The amount of withdrawals for water-use categories is also listed. All numbers are measured in million gallons per day (Mgal/d). 

## Questions we hope to answer with the data
   -  When will the water run out? 
   -  What is the predicted decrease of water levels? 
   -  How are Colorado river water levels compared to other areas?? 
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
Random Forest Regression score = 0.9691657678491484.
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

### Analysis Recommendations 


### What would we have done differently?


## Technologies, languages, tools, algorithms used

- Python Jupyter Notebook
- HTML/Javascript
- Tableau
- Postgress/PGAdmin


