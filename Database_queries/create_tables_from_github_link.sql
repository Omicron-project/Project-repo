DROP TABLE IF EXISTS water_usage;

CREATE TABLE IF NOT EXISTS water_usage(
	"FOOD COMMODITY GROUP" VARCHAR,
	"FOOD COMMODITY TYPOLOGY" VARCHAR,
	"FOOD COMMODITY sub-TYPOLOGY" VARCHAR,
	"FOOD COMMODITY ITEM" VARCHAR,
	n NUMERIC,
	mean DECIMAL,
	median DECIMAL,
	"st.dev." DECIMAL,
	min DECIMAL,
	max DECIMAL,
	MAD DECIMAL,
	Q1 DECIMAL,
	Q3 DECIMAL,
	CV DECIMAL,
	skewness DECIMAL,
	kurtosis DECIMAL,
	"Shapiro Wilk test P" DECIMAL,
	"FLAG 1 (SIZE)" VARCHAR,
	"FLAG 2 (outlier)" VARCHAR,
	"FLAG 3 (adherence to the normal distribution" VARCHAR,
	"Suggested CF value to represent food commodity" VARCHAR
);

COPY water_usage
FROM PROGRAM 'curl -s https://raw.githubusercontent.com/Omicron-project/Project-repo/refs/heads/main/Data_raw/food_waterusage.csv'
DELIMITER ','
CSV Header;

SELECT * FROM water_usage;

DROP TABLE IF EXISTS carbon_emissions;

CREATE TABLE IF NOT EXISTS carbon_emissions (
	"FOOD COMMODITY GROUP" VARCHAR,
	"FOOD COMMODITY TYPOLOGY" VARCHAR,
	"FOOD COMMODITY sub-TYPOLOGY" VARCHAR,
	"FOOD COMMODITY ITEM" VARCHAR,
	n NUMERIC,
	mean DECIMAL,
	median DECIMAL,
	"st.dev." DECIMAL,
	min DECIMAL,
	max DECIMAL,
	MAD DECIMAL,
	Q1 DECIMAL,
	Q3 DECIMAL,
	CV DECIMAL,
	skewness DECIMAL,
	kurtosis DECIMAL,
	"Shapiro Wilk test P" DECIMAL,
	"FLAG 1 (SIZE)" VARCHAR,
	"FLAG 2 (outlier)" VARCHAR,
	"FLAG 3 (adherence to the normal distribution" VARCHAR,
	"Suggested CF value to represent food commodity" VARCHAR
);

COPY carbon_emissions
FROM PROGRAM 'curl -s https://raw.githubusercontent.com/Omicron-project/Project-repo/refs/heads/main/Data_raw/food_carbonemission.csv'
DELIMITER ','
CSV Header;

SELECT * FROM ingredients_carbon;