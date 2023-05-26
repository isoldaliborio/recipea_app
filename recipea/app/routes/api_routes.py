from flask import Blueprint, request
from recipea.app.api.edamam import get_recipe_edamam
from recipea.app.api.recipea_db import insert_recipe, search_recipe

# Create a Blueprint for routes
api_routes = Blueprint('api_routes', __name__)


@api_routes.route('/search/edamam', methods=['GET'])
def search_recipe_edamam():
    # Get the search query parameters
    cuisine_type = request.args.get('cuisineType')
    health = request.args.get('Health')
    meal_type = request.args.get('mealType')
    ingredient = request.args.get('ingredient')

    # Function from app/api/edamam.py
    data = get_recipe_edamam(cuisine_type, health, meal_type, ingredient)

    if data is None:
        return "Your search did not find any results", 400

    return data, 200


@api_routes.route('/recipes', methods=['POST'])
def insert_recipe_db():
    # Get the JSON from the request
    data = request.json

    # Function from app/api/recipea_db.py
    message, status = insert_recipe(data)

    # Response for the client
    return message, status

@api_routes.route('/recipes', methods=['GET'])
def search_recipe_():

    data = search_recipe(user_input)

    if data is None:
        return "Nothing found"

    return data

