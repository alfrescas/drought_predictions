# CO River Basin Water Supply

## Presentation
- Selected topic
  - Upper & Lower CO Basin Water Usage
- Reason why we selected this topic
  - Water is one of our most precious resources because humanity couldn't exist without it. In addition to its key role in our survival, water is essential in nearly every facet of modern life from industrial processes to domestic pursuits. However, water is omnipresent and so we don't always take the time to consider how much we use, when and where we use it, and why we need it. We selected this topic due to its high importance and relevance to our society. We want to predict how our water usage and supply might look in the future to make recommendations for conservation and preparation.
- Description of our source of data
  - The USGS, U.S. Geological Survey, website maintains national data bases of water-use information. The data are collected and compiled every five years for each State, the District of Columbia, Puerto Rico, and the U.S. Virgin Islands. We have compiled the datasets from 1985-2015, 7 total, into a csv file and have sorted by the 4 states in the upper CO basin. The data contains water-use information that looks at how each of the 4 states uses water,the total amount of water withdrawals, and withdrawals broken down by type of water (fresh or saline) and withdrawal type (groundwater and surface water). The amount of withdrawals for water-use categories is also listed. All numbers are measured in million gallons per day (Mgal/d). 
- Questions we hope to answer with the data
   -  When will the water run out? 
   -  What is the predicted decrease of water levels? 
   -  How are other areas water levels compared to Colorado river water levels? 
   -  Which factors have the most impact in water reduction?

## States Relying on Colorado River Basin Water Supply:

![Upper_Lower_Basin](https://user-images.githubusercontent.com/105175961/199853643-227281eb-0fda-4b28-a371-13f5b090a121.png)


## Communication Protocols

### Methods Used for Communication: 

- Zoom, Slack, Microsoft Teams, Google Drive

In addition to meeting twice a week via Zoom during our regularly scheduled class time, the group is electing to meet at least once or twice a week outside of class via Microsoft Teams. We also maintain frequent communication via Slack, and will create a shared Google Doc that everyone can access, to plan and stay on top of upcoming tasks and update as necessary. While everyone in the group will be assigned their own pieces of the project that play to our strengths, we plan on taking an open-collaborative approach where all group members will actively participate in aiding and encouraging fellow group members.

## Github
- Includes a README.md
- README.md README.md must include: 
   - Description of the communication protocols
- Individual Branches 
  - At least one branch for each team member 
  - Each team member has at least four commits from the duration of the first segment 
  
## Machine Learning Model
### Linear Regression Model
Linear regression is used to predict continuos variables. It will take in a set of factors to attempt to learn patterns from them to predict a numerical value. The model predicts the result based on learned patterns if new data is added. 

We chose this model to predict what the water levels will be in the years to come.

## Database
### ERD
### Sample ERD
![ERD_Database](https://user-images.githubusercontent.com/105477190/199865016-7e40cd30-6bda-43b5-a750-424b16ff89d6.png)

How is it integrated into our database?
- The final database will consist of all 7 datasets combined into a singular csv file. The way we do this will be through python pandas. We have cleaned the data, renamed columns, and added columns where necessary. The datasets are connected by state and year.

How does it work with the code?
- It works with the code to outline where the commonalities are within the datasets so that we could easily combine the datasets and organize the structure.

## Segment 2: 

### Data Exploration Phase

The group continues to clean, append and merge datasets. Our data has a significant number of columns and we have spent time determining which of these columns have data pertinent to our project and getting rid of the ones that do not. We are reviewing our data to see what exactly it can tell us and if any additional datasets are needed to help predict and analyze results. 

We are also prepping code for machine learning and trying to determine whether our project is better suited for a linear regression to analyze correlation, or time series model to analyze forecasting. 

### Analysis Phase

The states we are analyzing are Colorado, California, Arizona, Utah, Wyoming, Nevada, and New Mexico. All 7 states are part of the Colorado River Basin. The Colorado River flows for approx. 1,450 miles and provides water to all 7 states. The years we are analyzing are 1985, 1990, 1995, 2000, 2005, 2010, and 2015. The analysis phase of the project will involve analyzing the total withdrawals and total domestic water use in million gallons per day (Mgal/d) per state and per year. We will look at how each state uses water by looking at withdrawals and withdrawal type (groundwater and surface water). 

### Tools Used to Create Final Dashboard

The group plans on displaying our findings on a website. Our geographical topic lends well to using maps created in Tableau to show analysis and predictions based on usage and availability. We will also use Tableau to create charts relevant to our findings, and incorporate all of these visuals into Google Slides to pair with our analysis and display on our site. We will also use interactive elements in our website design, buttons to select individual states and/or years and see a set of maps, or possibly a drop down or search filter. 

### Website Storyboard



![Website_Storyboard](https://user-images.githubusercontent.com/105175961/200971400-2180b535-68c0-4325-9d87-fb3a08bf20aa.png)






