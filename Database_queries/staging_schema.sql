CREATE SCHEMA IF NOT EXISTS staging;

DROP TABLE IF EXISTS staging.carbon_emissions;
DROP TABLE IF EXISTS staging.water_usage;

CREATE TABLE IF NOT EXISTS staging.carbon_emissions (
	food_commodity_item VARCHAR,
	carbon_fb DECIMAL -- kg CO2 eq/kg or litre of food commodity
);

CREATE TABLE IF NOT EXISTS staging.water_usage (
	food_commodity_item VARCHAR,
	water_fp DECIMAL -- liters/kg of food item
);

INSERT INTO staging.carbon_emissions --copies data from public schema to staging schema
SELECT "FOOD COMMODITY ITEM", mean
FROM public.carbon_emissions;

INSERT INTO staging.water_usage
SELECT "FOOD COMMODITY ITEM", mean
FROM public.water_usage;

SELECT * FROM staging.carbon_emissions; --can we join them? 
SELECT * FROM staging.water_usage;

