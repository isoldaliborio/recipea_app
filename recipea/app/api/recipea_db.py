from recipea.app.db.mysql_connector import connect


def insert_recipe(data):
    try:
        # Database connection
        db = connect()

        # Extract recipe data from the payload
        try:
            recipe_name = data['recipe_name']
            cuisine_type = data['cuisine_type']
            health = data.get('health', None)
            meal_type = data['meal_type']
            cooking_directions = data['cooking_directions']
            preparation_time = data.get('preparation_time', None)
            portions = data.get('portions', None)
            image_url = data.get('image_url', None)
        except KeyError:
            raise Exception("Required fields are not present")

        # Create a cursor object to execute SQL queries
        # Using buffered=True to get all results from different tables using the same cursor
        cursor = db.cursor(buffered=True)

        # Insert recipe data into the recipes table
        insert_recipe_query = "INSERT INTO recipes (recipe_name, cuisine_type, health, meal_type, cooking_directions, " \
                              "preparation_time, portions, image_url) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
        recipe_values = (
            recipe_name, cuisine_type, health, meal_type, cooking_directions, preparation_time, portions, image_url
        )
        cursor.execute(insert_recipe_query, recipe_values)

        # Get the auto-generated recipe ID for further use
        recipe_id = cursor.lastrowid

        # Insert ingredients into the ingredients table and create a mapping with measures
        if "ingredients" in data:
            for ingredient_data in data['ingredients']:
                ingredient_name = ingredient_data['name']
                ingredient_quantity = ingredient_data['quantity']
                measure = ingredient_data['measure']

                # Insert ingredient into the ingredients table if it doesn't exist already
                insert_ingredient_query = "INSERT IGNORE INTO ingredients (name) VALUES (%s)"
                cursor.execute(insert_ingredient_query, (ingredient_name,))

                # Get the ingredient ID
                get_ingredient_id_query = "SELECT ingredient_ID FROM ingredients WHERE name = %s"
                cursor.execute(get_ingredient_id_query, (ingredient_name,))
                ingredient_id = cursor.fetchone()[0]

                # Insert measure into the measures table if it doesn't exist already
                insert_measure_query = "INSERT IGNORE INTO measures (name) VALUES (%s)"
                cursor.execute(insert_measure_query, (measure,))

                # Get the measure ID
                get_measure_id_query = "SELECT measure_ID FROM measures WHERE name = %s"
                cursor.execute(get_measure_id_query, (measure,))
                measure_id = cursor.fetchone()[0]

                # Insert recipe-ingredient relationship into the recipes_ingredients table
                insert_recipe_ingredient_query = "INSERT INTO recipes_ingredients " \
                                                 "(recipe_ID, ingredient_ID, measure_ID, quantity) " \
                                                 "VALUES (%s, %s, %s, %s)"
                recipe_ingredient_values = (recipe_id, ingredient_id, measure_id, ingredient_quantity)
                cursor.execute(insert_recipe_ingredient_query, recipe_ingredient_values)

        # Commit the changes to the database
        db.commit()

        return {"status": "success"}, 200

    except Exception as e:
        # Handle any exceptions that occurred during the process
        return {"status": "error", "message": str(e)}, 400


#  delete recipe using recipe ID
def delete_recipe(recipe_id):
    try:
        # Establish database connection
        db = connect()

        # Create a cursor object to execute SQL queries
        cursor = db.cursor(buffered=True)

        # Delete recipe from table recipes_ingredients and recipes using recipe ID
        delete_recipes_ingredients_query = "DELETE FROM recipes_ingredients WHERE recipe_ID = %s"
        cursor.execute(delete_recipes_ingredients_query, (recipe_id,))

        delete_recipe_query = "DELETE FROM recipes WHERE recipe_ID = %s"
        cursor.execute(delete_recipe_query, (recipe_id,))

        # Commit the changes to the database
        db.commit()

        return {"status": "success"}, 200

    except Exception as e:
        # Handle any exceptions that occurred during the process
        return {"status": "error", "message": str(e)}, 400




