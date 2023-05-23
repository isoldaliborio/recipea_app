import unittest
from edamam import get_recipe_edamam

class TestGetRecipeEdamam(unittest.TestCase):

    # Test if with valid parameters a recipe can be retrieved
    def test_get_recipe_edamam_with_valid_parameters(self):
        cuisine_type = "Brazilian"
        health = "vegetarian"
        meal_type = "dinner"
        ingredient = "black beans"

        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        self.assertIsNotNone(recipes)
        self.assertGreater(len(recipes), 0)
        for recipe in recipes:
            self.assertEqual(recipe["meal_type"], "dinner")
            self.assertEqual(recipe["health"], "vegetarian")
            self.assertEqual(recipe["cuisine_type"], "Brazilian")
            self.assertGreater(len(recipe["ingredients"]), 0)

    # Test if with invalid/blank parameters Exception will be raised.
    def test_get_recipe_edamam_with_invalid_parameters(self):
        cuisine_type = ""
        health = ""
        meal_type = ""
        ingredient = ""

        with self.assertRaises(Exception):
            get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

    # Test response if no result is found.
    def test_get_recipe_edamam_with_no_results(self):
        cuisine_type = "French"
        health = "vegan"
        meal_type = "breakfast"
        ingredient = "cabbage"

        recipes = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

        self.assertIsNone(recipes)


if __name__ == "__main__":
    unittest.main()
