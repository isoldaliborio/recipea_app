from flask import Flask
from app.routes import routes

# Create the Flask app instance
app = Flask(__name__)

# Register the blueprint(s) with the app
app.register_blueprint(routes)

# Main entry point of the application
if __name__ == '__main__':
    app.run(debug=True)
