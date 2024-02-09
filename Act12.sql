-- .table
  
-- CREATE TABLE Region (
--   RegionID INTEGER,
--   RegionName NCHAR,
--   PRIMARY KEY (RegionID)
-- );

-- CREATE TABLE Country (
--   CountryCode NCHAR,
--   CountryName NCHAR,
--   RegionID INTEGER,
--   PRIMARY KEY (CountryCode),
--   FOREIGN KEY (RegionID) REFERENCES Region(RegionID)
-- );

-- CREATE TABLE Sex (
--   SexID INTEGER,
--   SexName NCHAR,
--   PRIMARY KEY (SexID)
-- );

-- CREATE TABLE Consumption (
--   Years TEXT,
--   CountryCode TEXT,
--   SexID INTEGER,
--   Num REAL,
--   Low REAL,
--   High REAL,
--   PRIMARY KEY (Years, CountryCode, SexID),
--   FOREIGN KEY (CountryCode) REFERENCES Country(CountryCode),
--   FOREIGN KEY (SexID) REFERENCES Sex(SexID)
-- );

-- INSERT INTO Consumption (SexID)
-- SELECT (SELECT SexID FROM Sex)
-- FROM  AlcoholConsumption 
-- ;

-- DROP TABLE IF EXISTS Consumption;
-- DROP TABLE IF EXISTS Sex;
-- DROP TABLE IF EXISTS Country;
-- DROP TABLE IF EXISTS Region;

-- SELECT * FROM Consumption LIMIT 5;

-- INSERT INTO Consumption (SexID)
-- VALUES 
--   (SELECT SexID FROM Sex WHERE SexName = 'Male')
-- ;


-- INSERT INTO Consumption(SexID) VALUES ();
.schema


-- INSERT INTO Consumption (CountryCode, Years, SexID, Num, Low, High)
-- SELECT DISTINCT
-- ac. "Country Code",
-- ac. "Year",
-- s. SexID,
-- ac. "Alcohol total per capita (15+) consumption in liters (numeric)",
-- ac. "Alcohol total per capita (15+) consumption in liters (low estimation)",
-- ac. "Alcohol total per capita (15+) consumption in liters (high estimation)"
-- FROM AlcoholConsumption ac
-- JOIN Sex s ON ac.Sex = s. SexName;

-- insert into Country (CountryCode, CountryName, RegionID)
-- select distinct "Country Code", Country, RegionID from AlcoholConsumption as ac
-- join Region as r on r.RegionName = ac. "WHO Region" ;

-- select * from Country limit 5;
-- select * from Region limit 5;



-- INSERT INTO Consumption (CountryCode, Years, SexID, Num, Low, High)
-- SELECT DISTINCT
-- ac. "Country Code",
-- ac. "Year",
-- s. SexID,
-- ac. "Alcohol total per capita (15+) consumption in liters (numeric)",
-- ac. "Alcohol total per capita (15+) consumption in liters (low estimation)",
-- ac. "Alcohol total per capita (15+) consumption in liters (high estimation)"
-- FROM AlcoholConsumption ac
-- JOIN Sex s ON ac.Sex = s. SexName; 

-- insert into Country (CountryCode, CountryName, RegionID)
-- select distinct "Country Code", Country, RegionID
-- from AlcoholConsumption as ac
-- join Region as r on r.RegionName = ac. "WHO Region" ;
select * from Country limit 100;
select * from Region limit 100;
select * from Consumption limit 100;
select * from Sex limit 100;

-- insert into Sex (SexName)
-- select distinct Sex
-- from AlcoholConsumption;

-- insert into Region (RegionName)
-- select distinct "WHO Region"
-- from AlcoholConsumption; 


