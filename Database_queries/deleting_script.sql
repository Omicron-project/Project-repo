DELETE FROM combined_table2
WHERE "Category" = 'Prepared/preserved foods';

DELETE FROM combined_table2
WHERE "Food_product" IN (
    'Apple pie', 'Beef burger', 'Beef curry', 'Beef meatballs', 
    'Beef noodles', 'Caesar salad', 'Carrot cake', 'Cereal bars', 
    'Cheesecake', 'Chicken burger', 'Chicken curry', 'Chicken pasta', 
    'Chicken noodles', 'Chilli con carne', 'Chocolate cake', 
    'Chocolate cheesecake', 'Cod fish fingers', 'Cod fishcakes', 'Cold buttermilk soup', 'Cottage pie',
	'Cream pastry, layer cake', 'Curry mayonnaise salad', 'Danish pastry, kanelsnegl', 'Fish cake, fried',
	'Fruit cake', 'Grilled sausages', 'Haddock risotto', 'Half peaches in juice', 'Half pears in juice',
	'Italian mayonnaise salad', 'Lamb burger', 'Lamb casserole', 'Lamb curry', 'Lamb Hotpot', 'Lamb moussaka',
	'Macaroni cheese', 'Mackerel mayonnaise salad','Meat-free burger', 'Meat-free nuggets', 'Meat pizza',
	'Minced meat, spaghetti sauce type, average values, ready meals', 'Onions, chopped and deepfried',
	'Pain au chocolat','Pancake puffs', 'Pastasauce', 'Pizza dough', 'Pizza Napolitana, frozen, ready meals',
	'Pizza Romana, frozen, ready meals','Pizza with broccoli, frozen, ready meals',
	'Pizza with meat and seafood, tomato and cheese, ready meals','Pizza with meat, tomato and cheese, ready meals',
	'Pizza with salami, tomato and cheese, ready meals', 'Pizza with seafood, tomato and cheese, ready meals',
	'Pizza with tomato and cheese, ready meals','Pizza with tuna, frozen, ready meals','Pizza with vegetables, fruit, tomato and cheese, ready meals',
	'Plain cake, average values','Plain cake, chocolate cake','Plant paste, pea protein and mushroom',
	'Pork in curry sauce, frozen, ready meals','Pork sausage rolls','Porridge (oatmeal)','Potato gratin / cream potatoes',
	'Potato salad','Prawn crackers', 'Sausages like chipolatas','Soy desert','Spaghetti bolognese',
	'Steak pie','Tuna salad', 'Turtle, fake, average values, ready meals', 'Vegan pizza','Vegetable lasagne', 'Vegetarian chilli con carne',
	'Vegetarian curry', 'Vegetarian pizza','Asparagus, green, raw','Bean sprouts, mung, raw', 'Beans, baked i tomato sauce, canned',
	'Beans, soy, dried, raw','Beans, wax, raw', 'Beet, red, canned','Biscuit, wholemeal, digestive type','Bread, white, for sausages'
	);

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Almond milk ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Almond milk', 'Almondmilk, unfortified');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Almond milk', 'Almondmilk, unfortified');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Apple juice ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Apple juice', 'Apple juice, canned or bottled');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Apple juice', 'Apple juice, canned or bottled');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Apple', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Apple, raw, all varieties', 'Apples');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Apple, raw, all varieties', 'Apples');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Asparagus ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Asparagus','Asparagus slices');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Asparagus','Asparagus slices');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Avocado', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Avocado, raw','Avocados');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Avocado, raw','Avocados');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Bacon ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Bacon, frying, raw', 'Bacon');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Bacon, frying, raw', 'Bacon');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Banana', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Banana, raw', 'Bananas');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Banana, raw', 'Bananas');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Beans ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Beans', 'Beans, green, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Beans', 'Beans, green, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Beer ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Beer', 'Beer, lager, alc. 4.4 % by vol.');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Beer');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Beetroot ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Beeroot', 'Beet, red, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Beetroot', 'Beet, red, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Biscuit', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Biscuits', 'Biscuit, sweet');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Biscuits', 'Biscuit, sweet');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Bread white', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Bread', 'Bread, white, roll, coarse grain');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Bread', 'Bread, white, roll, coarse grain');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Breakfast cereal average', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Breakfast cereal', 'Breakfast cereal, Guldkorn');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Breakfast cereal', 'Breakfast cereal, Guldkorn');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Broccoli ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Broccoli','Broccoli, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Broccoli');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Butter ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Butter','Butter, salt added');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Butter','Butter, salt added');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Cabbage ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Cabbage','Cabbage, white, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Cabbage');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Carrot raw', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Carrots','Carrot, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Carrots','Carrot, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Cashew nuts ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Cashew nuts', 'Cashew nuts, dry roasted');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Cashew nuts', 'Cashew nuts, dry roasted');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Cauliflower raw', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Cauliflower', 'Cauliflower, all varieties, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Cauliflower', 'Cauliflower, all varieties, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Chicken sausage', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Chicken sausages', 'Chicken, sausage');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Chicken sausages', 'Chicken, sausage');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Chickpeas ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Chickpeas', 'Chickpeas, canned');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Chickpeas', 'Chickpeas, canned');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Cider ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Cider', 'Cider 4.5%');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Cider', 'Cider 4.5%');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Cod fillet', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Cod', 'Cod, fillet, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Cod', 'Cod, fillet, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Coffee beans ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Coffee bean, roasted, ground', 'Coffee beans');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Coffee bean, roasted, ground', 'Coffee beans');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Cookie', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Cookie, truffle product / unbaked, industrially produced', 'Cookies');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Cookie, truffle product / unbaked, industrially produced', 'Cookies');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Cucumber ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Cucumber, raw', 'Cucumber');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Cucumber, raw', 'Cucumber');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Eggs ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Eggs', 'Eggs, chicken, free-range hens (indoor), raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Eggs', 'Eggs, chicken, free-range hens (indoor), raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Falafel', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Falafels','Falafel, frost');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Falafels','Falafel, frost');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'French fries frozen', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('French fries, frost', 'Frozen chips (french fries)');
DELETE FROM combined_table2 WHERE "Food_product" IN ('French fries, frost', 'Frozen chips (french fries)');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Grape', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Grapes','Grape, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Grapes','Grape, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Kale ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Kale', 'Kale, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Kale', 'Kale, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Kiwi', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Kiwi fruit, raw', 'Kiwis');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Kiwi fruit, raw', 'Kiwis');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Lemon', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Lemon, raw','Lemons');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Lemon, raw','Lemons');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Lentils ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Lentils','Lentils, sprouted, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Lentils','Lentils, sprouted, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Lettuce iceberg', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Lettuce','Lettuce, iceberg (incl. crisphead types), raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Lettuce','Lettuce, iceberg (incl. crisphead types), raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Lime', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Limes','Lime, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Limes','Lime, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Mackerel ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Mackrel','Mackerel, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Mackerel','Mackerel, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Melon ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Melon','Melon, honeydew, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Melon','Melon, honeydew, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Mixed salad ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Mixed salad','Mixed salad, ready meal');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Mixed salad','Mixed salad, ready meal');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Mushrooms raw', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Mushrooms','Mushroom, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Mushrooms','Mushroom, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Oat milk ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Oat milk','Oatmilk, with added calcium');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Oat milk','Oatmilk, with added calcium');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Onion raw', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Onion, raw','Onions');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Onion, raw','Onions');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Orange juice ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Orange juice','Orange juice, canned');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Orange juice','Orange juice, canned');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Orange', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Orange, raw','Oranges');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Orange, raw','Oranges');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Peanuts ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Peanuts, oilroasted and salted', 'Peanuts');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Peanuts, oilroasted and salted', 'Peanuts');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Pear', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Pears','Pear, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Pears','Pear, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Pineapple ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Pineapple','Pineapple, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Pineapple','Pineapple, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Pork sausage', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Pork sausage, Thuringer bratwurst','Pork sausages');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Pork sausage, Thuringer bratwurst','Pork sausages');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Potatoe', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Potatoes','Potato, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Potatoes','Potato, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Prawn', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Prawn, giant tiger, aquaculture, boiled, frozen','Prawns');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Prawn, giant tiger, aquaculture, boiled, frozen','Prawns');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Pumpkin seeds ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Pumpkin seeds','Pumpkin seeds, dried');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Pumpkin seeds','Pumpkin seeds, dried');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Quinoa ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Quinoa','Quinoa, black, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Quinoa','Quinoa, black, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Raspberry jam ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Raspberry jam','Raspberry marmalade');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Raspberry jam','Raspberry marmalade');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Raspberry', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Raspberries','Raspberry, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Raspberries','Raspberry, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Rice ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Rice','Rice groats, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Rice','Rice groats, raw','Rice, parboiled, raw' );

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Salmon ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Salmon','Salmon, atlantic, aquaculture, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Salmon','Salmon, atlantic, aquaculture, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Soymilk', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Soy milk','Soymilk, with added calcium');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Soy milk','Soymilk, with added calcium');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Spinach ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Spinach','Spinach, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Spinach','Spinach, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Strawberry', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Strawberries','Strawberry, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Strawberries','Strawberry, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Sunflower seeds ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Sunflower seeds, decorticated, dried','Sunflower seeds');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Sunflower seeds, decorticated, dried','Sunflower seeds');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Sweetcorn ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Sweetcorn', 'Sweetcorn, kernels, canned');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Sweetcorn', 'Sweetcorn, kernels, canned');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Tea ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Tea','Tea, leaves');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Tea','Tea, leaves');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Tomato ketchup ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Tomato ketchup','Tomato ketchup, bottled');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Tomato ketchup','Tomato ketchup, bottled');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Tomato', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Tomato, ripe, raw, origin unknown','Tomatoes');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Tomato, ripe, raw, origin unknown','Tomatoes');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Tortilla bread', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Tortilla bread, wheat','Tortilla wraps');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Tortilla bread, wheat','Tortilla wraps');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Tuna raw', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Tuna','Tuna, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Tuna','Tuna, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Walnuts ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Walnuts','Walnuts, dried');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Walnuts','Walnuts, dried');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Watermelon ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Watermelon','Watermelon, raw');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Watermelon','Watermelon, raw');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Wine average ', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Wine','Wine, white, average values');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Wine','Wine, white, average values');

INSERT INTO combined_table2
("Food_product", "Category", "Emissions per kilogram", "Land use per kilogram", 
 "Eutrophication per kilogram", "Water scarcity per kilogram", "Water withdrawals per kilogram", 
 "Energy (KJ/100 g)", "Fat (g/100 g)", "Carbohydrate (g/100 g)", "Protein (g/100 g)")
SELECT 
    'Yoghurt plain', 
    MAX("Category"),
    MAX("Emissions per kilogram"),
    MAX("Land use per kilogram"),
    MAX("Eutrophication per kilogram"),
    MAX("Water scarcity per kilogram"),
    MAX("Water withdrawals per kilogram"),
    MAX("Energy (KJ/100 g)"),
    MAX("Fat (g/100 g)"),
    MAX("Carbohydrate (g/100 g)"),
    MAX("Protein (g/100 g)")
FROM combined_table2
WHERE "Food_product" IN ('Yoghurt','Yogurt plain, whole milk');
DELETE FROM combined_table2 WHERE "Food_product" IN ('Yoghurt','Yogurt plain, whole milk');

SELECT * FROM combined_table2
ORDER BY "Food_product";