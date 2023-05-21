import requests
import random
import mysql.connector

api_id = "71db244a"
api_key = "dee782c80b2f6e2f25256b363d6fa68b"
search_query = 'chicken'
from_index = 0
to_index = 100

db = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="root",
    database="recipes"
)

def get_search_url(cuisine_labels, health_labels, diet_labels):
    url = f'https://api.edamam.com/search?q={search_query}&app_id={api_id}&app_key={api_key}&from={from_index}&to={to_index}'
    if cuisine_labels:
        url += f'&cuisine={",".join(cuisine_labels)}'
    if health_labels:
        url += f'&health={",".join(health_labels)}'
    if diet_labels:
        url += f'&diet={",".join(diet_labels)}'
    return url

def save_recipe_to_database(recipe):
    cursor = db.cursor()
    sql = """
    INSERT INTO recipes (label, url, cook_time)
    VALUES (%s, %s, %s)
    """
    val = (
        recipe.get('label'),
        recipe.get('url'),
        recipe.get('cook_time')
    )
    cursor.execute(sql, val)
    recipe_id = cursor.lastrowid
    db.commit()
    cursor.close()

# Example usage
recipe = {
    'label': 'Chicken Curry',
    'url': 'https://www.example.com/chicken-curry',
    'cook_time': 45
}

save_recipe_to_database(recipe)

# empty lists for options
cuisine_labels = []
health_labels = []
diet_labels = []
meal_type = ''

# Introduction
print('Welcome to Recipea')
print('Just like Tinder, but with taste')

# Select preferred cuisine
cuisine_input = input("Enter preferred cuisine (comma-separated values): ")
if cuisine_input:
    cuisine_labels = cuisine_input.split(',')

# Select health options
health_input = input("Enter preferred health options (comma-separated values): ")
if health_input:
    health_labels = health_input.split(',')

# Select diet labels
diet_input = input("Enter preferred diet labels (comma-separated values): ")
if diet_input:
    diet_labels = diet_input.split(',')

# Select meal type
while meal_type.lower() not in ['b', 'l', 'd']:
    meal_type = input("Select meal type (b for breakfast, l for lunch, d for dinner): ")

url = get_search_url(cuisine_labels, health_labels, diet_labels)

response = requests.get(url)
if response.status_code != 200:
    print('Error:', response.text)
    exit()

response_json = response.json()
hits = response_json.get('hits')
if hits:
    while True:
        random_hit = random.choice(hits)
        recipe = random_hit.get('recipe')
        print('Random recipe:', recipe.get('label'))
        print('Ingredients:')
        for ingredient in recipe.get('ingredientLines'):
            print('- ' + ingredient)
        print('Cook time:', recipe.get('totalTime'))

        feedback = input(f"Do you like or dislike {recipe.get('label')}? (l/d/q): ")
        if feedback.lower() == 'l':
            save_recipe_to_database(recipe)
        elif feedback.lower() == 'd':
            continue
        elif feedback.lower() == 'q':
            break

db.close()
