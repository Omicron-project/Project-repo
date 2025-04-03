DROP TABLE IF EXISTS combined_table2;
DROP TABLE IF EXISTS combined_table1;
DROP TABLE IF EXISTS climate_database;
DROP TABLE IF EXISTS environment_impact;
 
CREATE TABLE IF NOT EXISTS environment_impact (
	"Emissions per kilogram" DECIMAL,
	"Land use per kilogram" DECIMAL,
	"Eutrophication per kilogram" DECIMAL,
	"Water scarcity per kilogram" DECIMAL,
	"Water withdrawals per kilogram" DECIMAL,
	"Food_product" VARCHAR,
	"Year" INT
);

COPY environment_impact
FROM PROGRAM 'curl -s https://raw.githubusercontent.com/Omicron-project/Project-repo/refs/heads/main/Data_raw/environmental-impact-ourworld.csv'
DELIMITER ','
CSV Header;
 
CREATE TABLE IF NOT EXISTS climate_database (
	ID_Ra VARCHAR,
	"Food_product" VARCHAR,
	"Category" VARCHAR,
	"Emissions per kilogram" DECIMAL,
	Agriculture DECIMAL,
	iLUC DECIMAL,
	"Food processing" DECIMAL,
	Packaging DECIMAL,
	Transport DECIMAL,
	Retail DECIMAL,
	"Energy (KJ/100 g)" DECIMAL,
	"Fat (g/100 g)" DECIMAL,
	"Carbohydrate (g/100 g)" DECIMAL,
	"Protein (g/100 g)" DECIMAL,
	ID_food VARCHAR,
	ID_pack VARCHAR,
	ID_retail VARCHAR
);

COPY climate_database
FROM PROGRAM 'curl -s https://raw.githubusercontent.com/Omicron-project/Project-repo/refs/heads/main/Data_raw/climate_database.csv'
DELIMITER ','
CSV Header;

ALTER TABLE climate_database
DROP COLUMN id_ra,
DROP COLUMN agriculture,
DROP COLUMN iluc,
DROP COLUMN "Food processing",
DROP COLUMN packaging,
DROP COLUMN transport,
DROP COLUMN retail,
DROP COLUMN id_food,
DROP COLUMN id_pack,
DROP COLUMN id_retail;

CREATE TABLE combined_table1 AS
SELECT 
	COALESCE(t1."Food_product", t2."Food_product") AS "Food_product",
	t1."Category",
	COALESCE(t1."Emissions per kilogram", t2."Emissions per kilogram") AS "Emissions per kilogram",
	t1."Energy (KJ/100 g)",
	t1."Fat (g/100 g)",
	t1."Carbohydrate (g/100 g)",
	t1."Protein (g/100 g)",
	t2."Land use per kilogram",
	t2."Eutrophication per kilogram",
	t2."Water scarcity per kilogram",
	t2."Water withdrawals per kilogram"
FROM climate_database t1
FULL OUTER JOIN environment_impact t2
ON t1."Food_product" = t2."Food_product" AND t1."Emissions per kilogram" = t2."Emissions per kilogram";

SELECT * FROM combined_table1;


CREATE TABLE combined_table2 AS
SELECT 
    "Food_product",
	MAX("Category") AS "Category",
    MAX("Emissions per kilogram") AS "Emissions per kilogram",
    MAX("Land use per kilogram") AS "Land use per kilogram",
    MAX("Eutrophication per kilogram") AS "Eutrophication per kilogram",
    MAX("Water scarcity per kilogram") AS "Water scarcity per kilogram",
    MAX("Water withdrawals per kilogram") AS "Water withdrawals per kilogram",
    MAX("Energy (KJ/100 g)") AS "Energy (KJ/100 g)",
    MAX("Fat (g/100 g)") AS "Fat (g/100 g)",
    MAX("Carbohydrate (g/100 g)") AS "Carbohydrate (g/100 g)",
    MAX("Protein (g/100 g)") AS "Protein (g/100 g)"
FROM combined_table1
GROUP BY "Food_product"
ORDER BY "Food_product";

SELECT * FROM combined_table2;
