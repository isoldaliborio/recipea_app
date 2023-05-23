import unittest

from recipea.app.db.mysql_connector import connect
from recipea_db import insert_recipe


class TestRecipeaDb(unittest.TestCase):

    def test_insert_recipe(self):
        # Create a database connection
        db = connect()

        # Test if it is possible to insert a new recipe
        recipe_data = {
            "recipe_name": "Nigerian Buns",
            "cuisine_type": "Nigerian",
            "health": "Vegetarian",
            "meal_type": "Dessert",
            "cooking_directions": "1. In a medium bowl mix all the dry ingredients, flour baking powder, salt, sugar, grated orange, and nutmeg. 2. Stir in the milk, eggs, vanilla, and coconut flakes and oil; mix well until everything has been fully incorporated. The batter should be smooth, thick and spoon able. 3. In a large, sauce pan pour vegetable oil, until it is at least 3 inches (or about 5 centimeters) high (too little will result in flatter balls), and place on medium heat until oil is 375 degrees. 4. I use my hands to scoop up the batter; you can do the same or use 2 spoons - one to scoop up the batter, and another spoon or spatula to drop it in the oil- in the shape of a ball. Do not overcrowd the pan. Do so in batches. 5. Fry for a few minutes until the bottom side is golden brown. 6. Turn the ball over and fry for a few more minutes until the other side is golden brown. 7. Use a large spoon or something like that to take it out of the oil. I usually place them on napkins right away to soak up some of the excess oil. 8. If desired, you can roll the finished product in table sugar or powdered sugar to make it sweeter.",
            "preparation_time": 15,
            "portions": 20,
            "image_url": "https://upload.wikimedia.org/wikipedia/commons/6/6d/Buns_Recipe.jpg"
        }

        # Call the insert_recipe function
        response = insert_recipe(recipe_data)

        # Assert that the response is a success
        self.assertEqual(response.status_code, 200)

        # Assert that the response data is correct
        self.assertEqual(response.json()["status"], "success")

        # Close the database connection
        db.close()


if __name__ == "__main__":
    unittest.main()
