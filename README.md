# Upper CO Basin Water Supply - First Segment

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
Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- Takes in data in from the provisional database 
- Outputs label(s) for input data

## Database
Team members present a provisional database that stands in for the final database and accomplishes the following: 
- The final database will consist of all 7 datasets combined into a singular csv file. The way we do this will be through python pandas. We have cleaned the data, renamed columns, and added columns where necessary. The datasets are connected by state and year. 
### ERD
### Sample ERD
![ERD_Database](https://user-images.githubusercontent.com/105477190/199865016-7e40cd30-6bda-43b5-a750-424b16ff89d6.png)

How is it integrated into our database?
- The final database will consist of all 7 datasets combined into a singular csv file. The way we do this will be through python pandas. We have cleaned the data, renamed columns, and added columns where necessary. The datasets are connected by state and year.
How does it work with the code?
- It works with the code to outline where the commonalities are within the datasets so that we could easily combine the datasets and organize the structure.
