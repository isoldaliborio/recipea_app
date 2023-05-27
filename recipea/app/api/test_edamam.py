import os
import unittest
import requests
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Access the environment variables (on the file .env)
base_url = os.getenv("EDAMAM_BASE_URL")
app_id = os.getenv("EDAMAM_APP_ID")
app_key = os.getenv("EDAMAM_APP_KEY")

from edamam import get_recipe_edamam


class TestGetRecipeEdamam(unittest.TestCase):

    # Test if with valid parameters a recipe can be retrieved
    def test_get_recipe_edamam_with_valid_parameters(self):
        # Set up the test data
        cuisine_type = "Italian"
        health = "Vegetarian"
        meal_type = "lunch/dinner"
        ingredient = "Rigatoni"

        # Call the function
        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        response = requests.get(base_url)

        # Assert that the function returned a list of recipes
        self.assertIsInstance(recipes, list)

        # Assert that the list of recipes is not empty
        self.assertGreater(len(recipes), 0)

        # Assert that each recipe in the list has the expected properties
        for recipe in recipes:
            self.assertEqual(recipe["meal_type"], meal_type)
            self.assertEqual(recipe["health"], health)
            self.assertEqual(recipe["cuisine_type"], cuisine_type)
            self.assertIsNotNone(recipe["ingredients"])

        if response.status_code != 200:
            raise Exception(response.status_code)

    # Test if with invalid/blank parameters Exception will be raised.
    def test_get_recipe_edamam_with_invalid_parameters(self):
        cuisine_type = ""
        health = ""
        meal_type = ""
        ingredient = ""

        # Call the function
        with self.assertRaises(Exception):
            get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

    # Test response if no result is found.
    def test_get_recipe_edamam_with_no_results(self):
        cuisine_type = "French"
        health = "Vegan"
        meal_type = "breakfast"
        ingredient = "Cabbage"

        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        self.assertIsNone(recipes)

    def test_get_recipe_edamam_with_empty_parameters(self):
        cuisine_type = ""
        health = ""
        meal_type = ""
        ingredient = ""

        # Call the function
        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        # Assert that the function returned an empty list
        if recipes:
            self.assertEqual(recipes, [])
        else:
            self.assertIsNone(recipes)

    def test_get_recipe_edamam_with_nonexistent_ingredient(self):
        cuisine_type = "Italian"
        health = "Vegetarian"
        meal_type = "lunch/dinner"
        ingredient = "Pasta Sauce"

        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        # Assert that the function returned an empty list
        self.assertIsNone(recipes)

    def test_get_recipe_edamam_with_connection_error(self):
        cuisine_type = "Italian"
        health = "Vegetarian"
        meal_type = "lunch/dinner"
        ingredient = "Pasta"

        # Simulate a connection error
        requests.get = lambda *args, **kwargs: None

        with self.assertRaises(Exception):
            get_recipe_edamam(cuisine_type, health, meal_type, ingredient)


if __name__ == "__main__":
    unittest.main()