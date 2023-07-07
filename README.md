# UK Road Safety: Traffic Accidents Analysis

This project involves an in-depth analysis of the UK traffic accidents dataset, revealing patterns and providing insights into the accidents that occur on UK roads. 

## Dataset Details

The data comes from the [Open Data website of the UK government](https://data.gov.uk/dataset/cb7ae6f0-4be6-4935-9277-47e5ce24a11f/road-safety-data), where they have been published by the Department of Transport. The dataset covers a date range from 2005 to 2017.

This dataset is available on [Kaggle](https://www.kaggle.com/datasets/tsiaras/uk-road-safety-accidents-and-vehicles?select=Vehicle_Information.csv).

The dataset used in this project (Accident_Information.csv) represents unique traffic accidents across the UK, with various properties related to each accident as columns, such as geographical locations, weather conditions, type of vehicles, number of casualties, and vehicle manoeuvres.

The primary dataset used in this project, `Accident_Information.csv`, represents unique traffic accidents across the UK. Each row in the file is a unique traffic accident, identified by the `Accident_Index` column, and various properties related to the accident are represented as columns. The dataset includes 34 columns that provide details about the accident including:

- Accident_Index
- first_Road_Class
- first_Road_Number
- second_Road_Class
- second_Road_Number
- Accident_Severity
- Carriageway_Hazards
- Date
- Day_of_Week
- Did_Police_Officer_Attend_Scene_of_Accident
- Junction_Control
- Junction_Detail
- Latitude
- Light_Conditions
- Local_Authority_(District)
- Local_Authority_(Highway)
- Location_Easting_OSGR
- Location_Northing_OSGR
- Longitude
- LSOA_of_Accident_Location
- Number_of_Casualties
- Number_of_Vehicles
- Pedestrian_Crossing-Human_Control
- Pedestrian_Crossing-Physical_Facilities
- Police_Force
- Road_Surface_Conditions
- Road_Type
- Special_Conditions_at_Site
- Speed_limit
- Time
- Urban_or_Rural_Area
- Weather_Conditions
- Year
- InScotland (YES/NO)

## Exploratory Data Analysis

Conducted a thorough exploratory data analysis on the data. The SQL queries used in this analysis range from basic `SELECT` statements to more complex queries involving `JOINs`, aggregations, subqueries, and window functions.

## Questions Explored

Here are some of the questions that I have addressed in my analysis:

1. What is the distribution of accidents by severity?
2. Which day of the week has the most accidents?
3. What is the average number of casualties in accidents each year?
4. What time of day do most accidents occur?
5. Are there more accidents in urban or rural areas?
6. What percentage of total accidents does each severity level represent?
7. Which local authorities have the highest number of severe accidents?


