DROP TABLE IF EXISTS webappdb.ingredients; 

CREATE TABLE IF NOT EXISTS webappdb.ingredients (
	food_name VARCHAR,
	carbon_mean DECIMAL 
);

INSERT INTO webappdb.ingredients 
SELECT "Food_product", "Emissions per kilogram"
FROM data.food_ingredients;

SELECT * FROM webappdb.ingredients;
SELECT * FROM data.food_ingredients;