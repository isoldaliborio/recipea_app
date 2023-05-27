import unittest

from flask import Blueprint, request
from recipea.app.api.edamam import get_recipe_edamam
from recipea.app.api.recipea_db import insert_recipe, update_recipe, search_recipe


class ApiRoutesTest(unittest.TestCase):

    def test_search_recipe_edamam(self):
        # Setup
        cuisine_type = "Italian"
        health = "Healthy"
        meal_type = "Lunch"
        ingredient = "Tomato"

        # Call the function
        data = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        # Assert the results
        self.assertIsNotNone(data)
        self.assertIsInstance(data, list)
        self.assertGreater(len(data), 0)

    def test_insert_recipe_db(self):
        # Setup
        data = {
            "title": "Spaghetti Carbonara",
            "cuisine_type": "Italian",
            "health": "Healthy",
            "meal_type": "Lunch",
            "ingredients": ["Spaghetti", "Eggs", "Bacon", "Parmesan Cheese"],
            "instructions": "1. Cook the spaghetti according to the package directions. 2. While the spaghetti is cooking, fry the bacon until crisp. 3. In a separate bowl, whisk together the eggs and Parmesan cheese. 4. Drain the spaghetti and add it to the bacon. 5. Pour the egg mixture over the spaghetti and toss to combine. 6. Serve immediately."
        }

        # Call the function
        message, status = insert_recipe(data)

        # Assert the results
        self.assertEqual(message, "Recipe successfully inserted.")
        self.assertEqual(status, 201)

    def test_update_recipe_db(self):
        # Setup
        recipe_id = 1
        data = {
            "title": "Spaghetti Carbonara",
            "cuisine_type": "Italian",
            "health": "Healthy",
            "meal_type": "Lunch",
            "ingredients": ["Spaghetti", "Eggs", "Bacon", "Parmesan Cheese"],
            "instructions": "1. Cook the spaghetti according to the package directions. 2. While the spaghetti is cooking, fry the bacon until crisp. 3. In a separate bowl, whisk together the eggs and Parmesan cheese. 4. Drain the spaghetti and add it to the bacon. 5. Pour the egg mixture over the spaghetti and toss to combine. 6. Serve immediately."
        }

        # Call the function
        message, status = update_recipe(recipe_id, data)

        # Assert the results
        self.assertEqual(message, "Recipe successfully updated.")
        self.assertEqual(status, 200)

    def test_search_recipe_(self):
        # Setup
        cuisine_type = "Italian"
        health = "Healthy"
        meal_type = "Lunch"
        ingredient = "Tomato"

        # Call the function
        data = search_recipe(cuisine_type, health, meal_type, ingredient)

        # Assert the results
        self.assertIsNotNone(data)
        self.assertIsInstance(data, list)
        self.assertGreater(len(data), 0)


if __name__ == "__main__":
    unittest.main()