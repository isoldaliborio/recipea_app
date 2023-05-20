from flask import Blueprint
#from app.database.mysql import execute_sql_query
#from app.api.external_api import get_data_from_external_api

# Create a Blueprint for routes
routes = Blueprint('routes', __name__)


# Example route to fetch data from the MySQL database
@routes.route('/', methods=['GET'])
def get_data_from_database():
    return "Welcome to the Recipea App"
