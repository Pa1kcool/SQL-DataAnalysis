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
8. What is the distribution of accidents based on the weather conditions?
9. What is the average speed limit at the accident locations each year?
10. Which police forces deal with the highest number of accidents? (Metropolian Police - 143507)
11. Are there more accidents in areas with specific carriageway hazards? (None - 1028834, Any animal in carriageway except ridden horse - 5614)
12. What are the top 10 districts in terms of number of casualties?
13. What proportion of accidents happen in Scotland?
14. What is the distribution of a number of vehicles involved in the accidents?
15. Which make of vehicles are more involved in severe accidents?
16. What is the average age of vehicles involved in accidents each year?
17. Does the severity of an accident correlate with the age band of the driver?
18. How many severe accidents have occurred where the driver's home area type is 'Urban' or 'Rural'?
19. What percentage of accidents were caused by left-hand drive vehicles each year?


## MY FINDINGS:
1. The majority of accidents are of **low severity (slight)**, indicating that most accidents thankfully do not result in severe injuries or fatalities.

Slight: 895,883
Fatal: 14,500
Serious: 138,192

2. More accidents occur on **weekdays**, particularly **Friday**, suggesting that the increased travel associated with the start of the weekend might lead to more accidents.

3. The **average number of casualties** in accidents each year is around 1-2. This suggests that most accidents tend to involve a limited number of individuals.

4. Most accidents occur during **rush hour periods**, indicating the risks associated with high traffic volumes and potentially distracted or hurried driving.

5. While there may be more accidents in urban areas due to higher traffic volumes, the **severity of accidents** in rural areas may be higher, indicating the need for different preventive strategies in different regions.

6. **Fatal accidents** make up a small proportion of total accidents (about **2-5%**). This underscores the effectiveness of safety regulations and systems in vehicles.

7. **Metropolitan areas** tend to have a higher number of severe accidents, likely due to higher traffic volumes and population density.

8. Most accidents occur in **clear weather conditions**, indicating that factors other than weather, such as driver behavior and road conditions, are often more critical in accident occurrence.

9. The **average speed limit** at accident locations is around **30-50 mph**. This suggests that accidents often occur even at lower speed limits, where drivers might feel more comfortable but can still encounter risks.

10. **Police forces** in metropolitan areas like London may deal with a higher number of accidents due to the larger population and traffic volume in these areas.

11. Most accidents occur in areas without any specific **carriageway hazards** reported, suggesting that driver behavior or vehicle conditions might be more influential in accident occurrence.

12. The **districts with the highest number of casualties** are likely those with larger populations and more traffic, necessitating targeted interventions in these areas.

13. A **smaller proportion** of accidents occur in Scotland compared to England, reflecting the smaller population and potentially different driving conditions.

14. Most accidents involve 2 vehicles.

15. The **make of vehicles** most involved in severe accidents would likely be those that are most popular or common on the roads.

16. The **average age of vehicles** involved in accidents is be around **6-10 years**, reflecting the composition of the vehicle fleet on the roads.

17. **Drivers (20-37 old)** are involved in more severe accidents, suggesting that different age groups might require targeted driver education or support.

18. **Urban areas** might have more severe accidents due to the higher number of vehicles and potential for multi-vehicle accidents.

19. **Left-hand drive** vehicles might represent a small percentage of accidents, reflecting their rarity on UK roads.

20. **The average age of vehicles** involved in accidents might increase slightly over the years, suggesting the potential role of vehicle aging in accident risk.
