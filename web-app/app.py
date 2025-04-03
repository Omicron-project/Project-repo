from flask import Flask, render_template, request, jsonify
import psycopg2

app = Flask(__name__)

def get_db_connection():
    return psycopg2.connect(
        host="shared-server.postgres.database.azure.com",
        database="Emissions_calculator",
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

@app.route("/calculate_emissions", methods=["POST"]) 
def calculate_emissions():
    data = request.json
    ingredients = data.get("ingredients", [])
        
    total_emissions = 0.0 
    results = [] # Store individual ingredient details

    conn = get_db_connection()
    cur = conn.cursor()

    try: 
        for ingredient in ingredients:
            name = ingredient["name"]
            amount = float(ingredient["amount"])
            unit = ingredient["unit"]
                
            # Fetch carbon_fb value from the database
            cur.execute("SELECT carbon_mean FROM webappdb.ingredients WHERE food_name = %s;", (name,))
            emission_factor_row = cur.fetchone()
                
            if emission_factor_row:
                emission_factor = float(emission_factor_row[0])  # Convert Decimal to float

                # Convert emissions based on the unit
                if unit == 'gr':
                    emissions = (emission_factor * amount/1000) # Convert grams to kg
                elif unit == 'dl':
                    emissions = emission_factor * amount # Assume 1 dl = 1 kg (adjust if needed)
                else:
                    emissions = 0 
                
                total_emissions += emissions # Add to total emissions

                # Store ingredient details
                results.append({
                    "name": name,
                    "amount": amount,
                    "unit": unit,
                    "carbon_fb": emission_factor,
                    "emissions": emissions # Store individual emissions
                })
            else:
                print(f"Warning: No emission factor found for ingredient {name}")

    except Exception as e: 
        print("Error:", e)
        return jsonify({"error": "Something went wrong"}), 500 

    finally: 
        cur.close()
        conn.close()

    return jsonify({
        "ingredient_details": results,
        "total_emissions": total_emissions  # Send total emissions to frontend
    })

if __name__ == "__main__":
    app.run(debug=True)
