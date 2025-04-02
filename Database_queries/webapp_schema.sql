DROP TABLE IF NOT EXISTS webappdb.ingredients; 

CREATE TABLE IF NOT EXISTS webappdb.ingredients (
	food_name VARCHAR,
	carbon_mean DECIMAL 
);

INSERT INTO webappdb.ingredients 
SELECT "FOOD COMMODITY ITEM", carbon_mean
FROM data.water_carbon_combined;

SELECT * FROM webappdb.ingredients;