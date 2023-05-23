from recipea_db import connect
import requests

def update_recipe(recipe_id, data):
    try:
        # Database connection
        db = connect()

        # Extract recipe data from the payload
        recipe_name = data.get('recipe_name', None)
        cuisine_type = data.get('cuisine_type', None)
        health = data.get('health', None)
        meal_type = data.get('meal_type', None)
        cooking_directions = data.get('cooking_directions', None)
        preparation_time = data.get('preparation_time', None)
        portions = data.get('portions', None)
        image_url = data.get('image_url', None)

        # Create a cursor object to execute SQL queries
        cursor = db.cursor(buffered=True)

        # Update recipe data in the recipes table
        update_recipe_query = """
            UPDATE recipes 
            SET recipe_name = COALESCE(%s, recipe_name), 
                cuisine_type = COALESCE(%s, cuisine_type), 
                health = COALESCE(%s, health), 
                meal_type = COALESCE(%s, meal_type), 
                cooking_directions = COALESCE(%s, cooking_directions), 
                preparation_time = COALESCE(%s, preparation_time), 
                portions = COALESCE(%s, portions), 
                image_url = COALESCE(%s, image_url) 
            WHERE recipe_id = %s
        """
        cursor.execute(update_recipe_query, (
            recipe_name, cuisine_type, health, meal_type, cooking_directions, preparation_time, portions, image_url,
            recipe_id))

        # Update ingredients and measures if present
        if "ingredients" in data:
            for ingredient_data in data['ingredients']:
                ingredient_name = ingredient_data['name']
                ingredient_quantity = ingredient_data['quantity']
                measure = ingredient_data['measure']

                # Get the ingredient ID
                get_ingredient_id_query = "SELECT ingredient_ID FROM ingredients WHERE name = %s"
                cursor.execute(get_ingredient_id_query, (ingredient_name,))
                ingredient_id = cursor.fetchone()[0]

                # Get the measure ID
                get_measure_id_query = "SELECT measure_ID FROM measures WHERE name = %s"
                cursor.execute(get_measure_id_query, (measure,))
                measure_id = cursor.fetchone()[0]

                # Update recipe-ingredient relationship in the recipes_ingredients table
                update_recipe_ingredient_query = """
                    UPDATE recipes_ingredients 
                    SET quantity = %s 
                    WHERE recipe_ID = %s 
                        AND ingredient_ID = %s 
                        AND measure_ID = %s
                """
                cursor.execute(update_recipe_ingredient_query, (ingredient_quantity, recipe_id, ingredient_id, measure_id))

        # Commit the changes to the database
        db.commit()

        return {"status": "success"}, 200

    except Exception as e:
        # Handle any exceptions that occurred during the process
        return {"status": "error", "message": str(e)}, 400