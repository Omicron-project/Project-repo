CREATE TABLE data.water_carbon_combined(
"FOOD COMMODITY GROUP" VARCHAR,
"FOOD COMMODITY TYPOLOGY" VARCHAR,
"FOOD COMMODITY sub-TYPOLOGY" VARCHAR,
"FOOD COMMODITY ITEM" VARCHAR,
carbon_mean DECIMAL,
carbon_median DECIMAL,
carbon_min DECIMAL,
carbon_max DECIMAL,
carbon_suggested_value VARCHAR,
water_mean DECIMAL,
water_median DECIMAL,
water_min DECIMAL,
water_max DECIMAL,
water_suggested_value VARCHAR
);

DROP TABLE IF EXISTS webappdb.ingredients; 

CREATE TABLE IF NOT EXISTS webappdb.ingredients (
	food_name VARCHAR,
	carbon_mean DECIMAL 
);

INSERT INTO webappdb.ingredients 
SELECT "FOOD COMMODITY ITEM", carbon_mean
FROM data.water_carbon_combined;

SELECT * FROM webappdb.ingredients;
