--CREATE TABLE Accidentsinfo (
--    Accident_Index VARCHAR(255) PRIMARY KEY,
--    1st_Road_Class VARCHAR(255),
--    1st_Road_Number INT,
--    2nd_Road_Class VARCHAR(255),
--    2nd_Road_Number INT,
--    Accident_Severity VARCHAR(255),
--    Carriageway_Hazards VARCHAR(255),
--    Date DATE,
--    Day_of_Week VARCHAR(255),
--    Did_Police_Officer_Attend_Scene_of_Accident INT,
--    Junction_Control VARCHAR(255),
--    Junction_Detail VARCHAR(255),
--    Latitude VARCHAR(255),
--    Light_Conditions VARCHAR(255),
--    Local_Authority_District VARCHAR(255),
--    Local_Authority_Highway VARCHAR(255),
--    Location_Easting_OSGR INT,
--    Location_Northing_OSGR INT,
--    Longitude DECIMAL(10, 8),
--    LSOA_of_Accident_Location VARCHAR(255),
--    Number_of_Casualties INT,
--    Number_of_Vehicles INT,
--    Pedestrian_Crossing_Human_Control INT,
--    Pedestrian_Crossing_Physical_Facilities INT,
--    Police_Force VARCHAR(255),
--    Road_Surface_Conditions VARCHAR(255),
--    Road_Type VARCHAR(255),
--    Special_Conditions_at_Site VARCHAR(255),
--    Speed_limit INT,
--    Time TIME,
--    Urban_or_Rural_Area VARCHAR(255),
--    Weather_Conditions VARCHAR(255),
--    Year INT,
--    InScotland VARCHAR(255)
--);



--CREATE TABLE Vehiclesinfo (
--    Accident_Index VARCHAR(255),
--    Age_Band_of_Driver VARCHAR(255),
--    Age_of_Vehicle VARCHAR(255),
--    Driver_Home_Area_Type VARCHAR(255),
--    Driver_IMD_Decile VARCHAR(255),
--    Engine_Capacity_CC VARCHAR(255),
--    Hit_Object_in_Carriageway VARCHAR(255),
--    Hit_Object_off_Carriageway VARCHAR(255),
--    Journey_Purpose_of_Driver VARCHAR(255),
--    Junction_Location VARCHAR(255),
--    Make VARCHAR(255),
--    Model VARCHAR(255),
--    Propulsion_Code VARCHAR(255),
--    Sex_of_Driver VARCHAR(255),
--    Skidding_and_Overturning VARCHAR(255),
--    Towing_and_Articulation VARCHAR(255),
--    Vehicle_Leaving_Carriageway VARCHAR(255),
--    Vehicle_Location_Restricted_Lane INT,
--    Vehicle_Manoeuvre VARCHAR(255),
--    Vehicle_Reference INT,
--    Vehicle_Type VARCHAR(255),
--    Was_Vehicle_Left_Hand_Drive VARCHAR(255),
--    X1st_Point_of_Impact VARCHAR(255),
--    Year INT,
--    FOREIGN KEY (Accident_Index) REFERENCES Accidents(Accident_Index)
--);



--STEP-1: DATA FAMILIARIZATION

--select * from
--Accidentsinfo

--select * from
--Vehiclesinfo

--SELECT TOP 10 * FROM Accidentsinfo;
--SELECT TOP 10 * FROM Vehiclesinfo;

--Checking any inconsistent DATA ,like Age of Vehicle is not negative or unrealistically high
--SELECT * 
--FROM Vehiclesinfo 
--WHERE Age_of_Vehicle < 0 OR Age_of_Vehicle > 100;


--STEP-2: Exploratory Data Analysis - Exploring the data and extracting meaningful insights

---- Count of accidents by year - YEAR 2005 has more accidentscount of 193867
--SELECT Year, COUNT(*) as AccidentCount
--FROM Accidentsinfo
--GROUP BY Year
--ORDER BY Year;

-- 1. What is the distribution of accidents by severity?

SELECT 
    Accident_Severity, 
    COUNT(*) AS Count
FROM 
    Accidentsinfo
GROUP BY 
    Accident_Severity;

-- 2. Which day of the week has the most accidents?

--SELECT Day_of_Week, COUNT(*) AS Count
--FROM Accidentsinfo
--GROUP BY Day_of_Week
--ORDER BY Count DESC;

--3. What is the average number of casualties in accidents each year?
--SELECT YEAR, AVG(CAST(Number_of_Casualties AS FLOAT)) AS Average_Casualties
--FROM Accidentsinfo
--GROUP BY Year
--ORDER BY Average_Casualties DESC

-- 4. What time of day do most accidents occur?

--SELECT DATEPART(HOUR, Time) AS Hour, COUNT(*) AS Count
--FROM Accidentsinfo
--GROUP BY DATEPART(HOUR, Time)
--ORDER BY Count DESC;


-- 5. Are there more accidents in urban or rural areas?

--SELECT Urban_or_Rural_Area, COUNT(*) AS Count
--FROM Accidentsinfo
--GROUP BY Urban_or_Rural_Area;


-- 6. What percentage of total accidents does each severity level represent?

--WITH total_accidents AS (SELECT COUNT(*) AS Total_CountFROM Accidents)
--SELECT Accident_Severity, COUNT(*) * 100.0 / Total_Count AS Percentage
--FROM Accidentsinfo, total_accidents
--GROUP BY Accident_Severity, Total_Count;


-- 7. Which local authorities have the highest number of severe accidents?

--SELECT Local_Authority_District, COUNT(*) AS Count
--FROM Accidentsinfo
--WHERE Accident_Severity = 'Severe'  
--GROUP BY Local_Authority_District
--ORDER BY Count DESC;

--8. What is the distribution of accidents based on the weather conditions?

--SELECT Weather_Conditions, COUNT(*) AS Count
--FROM Accidentsinfo
--GROUP BY Weather_Conditions;

--9. What is the average speed limit at the accident locations each year?

--SELECT Year, AVG(Speed_limit) AS Average_Speed_Limit
--FROM Accidentsinfo
--GROUP BY Year;

--10. Which police forces deal with the highest number of accidents? (Metropolian Police - 143507)

--SELECT Police_Force, COUNT(*) AS Count
--FROM Accidentsinfo
--GROUP BY Police_Force
--ORDER BY Count DESC;

--11. Are there more accidents in areas with specific carriageway hazards? (None - 1028834, Any animal in carriageway except ridden horse - 5614)

--SELECT Carriageway_Hazards, COUNT(*) AS Count
--FROM Accidentsinfo
--GROUP BY Carriageway_Hazards;

--12. What are the top 10 districts in terms of number of casualties?
--SELECT TOP 10 (Local_Authority_(District)), SUM(Number_of_Casualties) AS Total_Casualties
--FROM Accidentsinfo
--GROUP BY Local_Authority_(District)
--ORDER BY Total_Casualties DESC

--13. What proportion of accidents happen in Scotland?
--SELECT InScotland, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Accidentsinfo) AS Percentage
--FROM Accidentsinfo
--GROUP BY InScotland;

--14. What is the distribution of number of vehicles involved in the accidents?
--SELECT Number_of_Vehicles, COUNT(*) AS Count
--FROM Accidentsinfo
--GROUP BY Number_of_Vehicles
--ORDER BY Count DESC;

--15. Which make of vehicles are more involved in severe accidents?

--SELECT V.make, COUNT(*) as Severe_Accidents
--FROM 
--    Accidentsinfo A
--JOIN 
--    Vehiclesinfo V ON A.Accident_Index = V.Accident_Index
--WHERE A.Accident_Severity = 'Severe'
--GROUP BY V.make
--ORDER BY Severe_Accidents DESC;

--16. What is the average age of vehicles involved in accidents each year?

--SELECT A.Year,AVG(V.Age_of_Vehicle) as Avg_Vehicle_Age
--FROM 
--    Accidentsinfo A
--JOIN 
--    VehiclesInfo V ON A.Accident_Index = V.Accident_Index
--GROUP BY A.Year;


--17. Does the severity of an accident correlate with the age band of the driver?

--SELECT V.Age_Band_of_Driver, A.Accident_Severity, COUNT(*) as Number_of_Accidents
--FROM 
--    Accidentsinfo A
--JOIN 
--    VehiclesInfo V ON A.Accident_Index = V.Accident_Index
--GROUP BY V.Age_Band_of_Driver, A.Accident_Severity;


--18. How many severe accidents have occurred where the driver's home area type is 'Urban' or 'Rural'?

--SELECT V.Driver_Home_Area_Type, COUNT(*) as Severe_Accidents
--FROM Accidentsinfo A
--JOIN VehiclesInfo V ON A.Accident_Index = V.Accident_Index
--WHERE A.Accident_Severity = 'Severe' AND (V.Driver_Home_Area_Type = 'Urban' OR V.Driver_Home_Area_Type = 'Rural')
--GROUP BY V.Driver_Home_Area_Type;


--19. What percentage of total accidents were caused by left-hand drive vehicles each year?

--SELECT A.Year,(COUNT(*) * 1.0 / (SELECT COUNT(*) FROM Accidentsinfo WHERE Year = A.Year))*100 as Left_Hand_Drive_Percent
--FROM Accidentsinfo A
--JOIN VehiclesInfo V ON A.Accident_Index = V.Accident_Index
--WHERE V.Was_Vehicle_Left_Hand_Drive = 'Yes'
--GROUP BY A.Year;

--20. Finding the average age of vehicles involved in accidents each year (using subquery and aggregation):

--SELECT V.Year, AVG(V.Age_of_Vehicle) as Avg_Vehicle_Age
--FROM 
--    (SELECT Age_of_Vehicle, Year 
--     FROM VehiclesInfo 
--     WHERE Age_of_Vehicle IS NOT NULL AND ISNUMERIC(Age_of_Vehicle) = 1) as V
--GROUP BY V.Year;
