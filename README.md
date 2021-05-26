# Predicting Presidential Elections at the State Level
![](images/map_header.PNG)

# Project Overview

Throughout history we have seen changes in how different states vote in elections. What makes a state red or blue? Our goal is to determine the answer to this question by using our data sources to see they somehow correlate with the outcome of previous elections. If accurate, we believe that we can utilize our model to predict future elections. 

## Google Slides Presentation
### [Link to Google Slides Presentation](https://docs.google.com/presentation/d/1Fi2ku2yF1nq2R5zSuyaotLsO4VyYtfnHJCpFY3X6e9w/edit?usp=sharing)

![Gooogle_Slide_Presentation](https://github.com/jipearson/blue-team/blob/presentation/images/GoogleSlidesPresentation.jpg)

## Tableau Dashboard
### [Link to Tableau Dashboard](https://public.tableau.com/profile/tyler.foreman#!/vizhome/ElectionPredictions_16214580151030/Story1)

![Tableau_Dashboard](https://github.com/jipearson/blue-team/blob/presentation/images/tableau_map.png)

## Technologies Used
- ### Data Cleaning and Analysis
  - Pandas will be used to clean the data and perform our exploratory analysis. Python will be used later in our analysis.

- ### Database Storage
   - We have decided to use a Postgres SQL server hosted in AWS RDS.

- ### Machine Learning
  - SciKitLearn is the ML library we will be using to create a classifier.

- ### Dashboard
  - Tableau Public is the dashboard choice that will be used for our project. 

## Database
- ERD <br> ![](images/ERD.png)

## Machine Learning Module

![MinMaxScaler](https://github.com/jipearson/blue-team/blob/presentation/images/MinMaxScaler.png)

![Training_Data](https://github.com/jipearson/blue-team/blob/presentation/images/training_data.png)

![Testing_Data](https://github.com/jipearson/blue-team/blob/presentation/images/testing_data.png)

![Coefficients](https://github.com/jipearson/blue-team/blob/presentation/images/logisticreg_coefficients.png)

![prediction](https://github.com/jipearson/blue-team/blob/presentation/images/model_prediction.png)

## Results

After running our data through the model the results proved to be 94% accurate.

![Classification_Report](https://github.com/jipearson/blue-team/blob/presentation/images/classification_report.png)

Running our model to predict the 2020 presidential election we managed to accurately get all state results correct with the exception of Georgia and Arizona. 

![2020_Prediction_Map](https://github.com/jipearson/blue-team/blob/presentation/images/2020PredictMap.png)

Using current trends we ran the model to predict the 2024 election and all results were the same with the exception of Georgia turning back to a red state and Ohio switching from red to blue. With these projections the democratic candidate would win with 304 electoral votes to 234 for the republican candidate. 

![2024_Prediction_Map](https://github.com/jipearson/blue-team/blob/presentation/images/2024PredictMap.png)

## Summary

- Based on our coefficients there are definitely key drivers to whether or not a state will vote red or blue. Past presidential elections and senate race results are great indicators to project how states will vote. We feel that using results from the past 5 elections proves to be more accurate as the political landscape and culture continues to change. 
- Regions are also a big contributing factor. Southern region states are more likely to vote red and north east states blue. Some midwest and western states are more likely to swing. 
- Looking at race, we observed that states with a higher percentage of white population tend to vote red and those with higher black/hispanic origin populations vote blue. 
- Moving forward we would plan to re-run our model once the 2022 Senate races have been completed to have a better predicition for the 2024 Presidential election. It is also important to keep up demographic changes as we are beginning to see a lot of migration from state-to-state that could alter our predictions. 

