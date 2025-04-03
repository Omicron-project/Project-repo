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
    try: 
        data = request.json
        ingredients = data.get("ingredients", [])
        results = []

        conn = get_db_connection()
        cur = conn.cursor()

        for ingredient in ingredients:
            name = ingredient.get("name")
                
            # Fetch carbon_fb value from the database
            cur.execute("SELECT carbon_mean FROM webappdb.ingredients WHERE food_name = %s;", (name,))
            row = cur.fetchone()
                
            if row:
                results.append({"name": name, "carbon_fb": float(row[0])})  # Convert Decimal to float
            else:
                results.append({"name": name, "carbon_fb": "Not Found"})  # Handle missing ingredients        

        cur.close()
        conn.close()

        return jsonify(results)

    except Exception as e: 
        print("Error:", e)
        return jsonify({"error": "Something went wrong"}), 500 

if __name__ == "__main__":
    app.run(debug=True)
