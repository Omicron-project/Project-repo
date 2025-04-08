from flask import Flask, render_template, request, jsonify
import psycopg2
import os
from dotenv import load_dotenv

app = Flask(__name__)

# Load .env file for database credentials
load_dotenv()

# Get environment variables
DB_HOST = os.getenv("DB_HOST")
DB_NAME = os.getenv("DB_NAME")
DB_USER = os.getenv("DB_USER")
DB_PASSWORD = os.getenv("DB_PASSWORD")

# Connect to PostgreSQL
def get_db_connection():
    conn = psycopg2.connect(
        host=DB_HOST,
        dbname=DB_NAME,
        user=DB_USER,
        password=DB_PASSWORD
    )
    return conn

# Home page route
@app.route("/")
def home():
    return render_template("index.html")

# Ingredient search route
@app.route("/search_ingredients", methods=["GET"])
def search_ingredients():
    query = request.args.get("query", "").strip()

    if not query:
        return jsonify([])

    conn = get_db_connection()
    cur = conn.cursor()

    cur.execute(
        "SELECT food_name FROM webappdb.ingredients WHERE food_name ILIKE %s LIMIT 10;",
        (f"%{query}%",)
    )
    ingredients = [row[0] for row in cur.fetchall()]

    cur.close()
    conn.close()

    return jsonify(ingredients)

# Classify emissions per serving
def categorize_impact(emissions_per_serving):
    if emissions_per_serving < 1.75:
        return "Very Low Impact"
    elif 1.75 <= emissions_per_serving < 3:
        return "Low Impact"
    elif 3 <= emissions_per_serving < 4.25:
        return "Medium Impact"
    elif 4.25 <= emissions_per_serving < 5.5:
        return "High Impact"
    else:
        return "Very High Impact"

# Emissions calculation route
@app.route("/calculate_emissions", methods=["POST"])
def calculate_emissions():
    data = request.json
    ingredients = data.get("ingredients", [])
    servings = int(data.get("servings", 1))

    total_emissions = 0.0
    results = []

    conn = get_db_connection()
    cur = conn.cursor()

    try:
        for ingredient in ingredients:
            name = ingredient["name"]
            amount = float(ingredient["amount"])
            unit = ingredient["unit"]

            cur.execute("SELECT carbon_mean FROM webappdb.ingredients WHERE food_name = %s;", (name,))
            emission_factor_row = cur.fetchone()

            if emission_factor_row:
                emission_factor = float(emission_factor_row[0])

                # Convert units
                if unit == 'gr':
                    emissions = (emission_factor * amount / 1000)
                elif unit == 'dl':
                    emissions = (emission_factor * amount / 10)
                else:
                    emissions = 0  # default to 0 if unit not handled

                total_emissions += emissions

                results.append({
                    "name": name,
                    "amount": amount,
                    "unit": unit,
                    "carbon_fb": emission_factor,
                    "emissions": emissions
                })
            else:
                print(f"Warning: No emission factor found for ingredient {name}")

        emissions_per_serving = total_emissions / servings if servings > 0 else total_emissions
        impact_category = categorize_impact(emissions_per_serving)

        # Select image based on impact category
        image_map = {
            "Very Low Impact": "super_low.png",
            "Low Impact": "low.png",
            "Medium Impact": "medium.png",
            "High Impact": "high.png",
            "Very High Impact": "very_high.png"
        }
        impact_image = image_map.get(impact_category, "default.png")

        return jsonify({
            "total_emissions": round(total_emissions, 2),
            "emissions_per_serving": round(emissions_per_serving, 2),
            "impact_category": impact_category,
            "impact_image": impact_image,
            "ingredient_details": results
        })

    except Exception as e:
        print("Error:", e)
        return jsonify({"error": "Something went wrong"}), 500

    finally:
        cur.close()
        conn.close()

# Run Flask app
if __name__ == "__main__":
    app.run(debug=True)
