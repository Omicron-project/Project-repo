from flask import Flask, render_template, request, jsonify
import psycopg2

app = Flask(__name__)

def get_db_connection():
    return psycopg2.connect(
        host="shared-server.postgres.database.azure.com",
        database="postgres",
        user="omicronadmin",
        password="DBsalasana!"
    )

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/search_ingredients", methods =["GET"])
def search_ingredients():
    query = request.args.get("query", "").strip()

    if not query:
        return jsonify([]) #return empty list if query is empty
    
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

@app.route("/calculate_emissions", methods=["POST"]) ## EI TOIMI
def calculate_emissions():
    data = request.json['ingredients']
    ingredients = data.get('ingredients', []) 
    total_emissions = 0.0 

    conn = get_db_connection()
    cur = conn.cursor()

    for ingredient in ingredients:
        name = ingredient.get('name')
        amount = ingredient.get('amount')
        unit = ingredient.get('unit')

        # Fetch carbon footprint value from DB
        cur.execute("SELECT carbon_fb FROM webappdb.ingredients WHERE food_name = %s;", (name,))
        row = cur.fetchone()
    
        if row:
            emission_factor = float(row[0])
            # Adjust the logic based on the unit
            if unit == 'gr':
                total_emissions += float(emission_factor) * amount / 1000  # Convert grams to kg for emissions
            elif unit == 'dl':
                total_emissions += float(emission_factor) * amount  # Assume deciliters are directly used
        else:
            print(f"Warning: No emission factor found for ingredient {name}")
    
    cur.close()
    conn.close()
    
    return jsonify({"emissions_per_serving": total_emissions})

if __name__ == "__main__":
    app.run(debug=True)
