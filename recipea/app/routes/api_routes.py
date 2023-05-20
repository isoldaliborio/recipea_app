from flask import Blueprint, request
from recipea.app.api.edamam import search_recipes

# Create a Blueprint for routes
api_routes = Blueprint('api_routes', __name__)


@api_routes.route('/recipes', methods=['GET'])
def recipes():
    # Get the search query parameters
    cuisine_type = request.args.get('cuisineType')
    health = request.args.get('Health')
    meal_type = request.args.get('mealType')
    ingredient = request.args.get('ingredient')

    data = search_recipes(cuisine_type, health, meal_type, ingredient)

    if data is None:
        return "Your search did not find any results"

    return data
