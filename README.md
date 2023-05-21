# Recipea app 
Final Project for CFGDegree. app recipea
Software 2
group 6
Team: 


## Instructions 
.......

  
## App architecture  
### `app/`
The main folder for the application

### `app/api/edamam.py`
Methods to interact with the Edamam API. They will be called from `app/routes/api_routes.py`
### `app/api/recipea_db.py`
Methods to interact with the Recipea database (MySQL). They will be called from `app/routes/api_routes.py`

### `app/api/db/mysql_connector.py`
Method to connect to MySQL database. The method `connect()` contained in this file needs to be imported wherever you need to connect to the DB.

### `app/api/routes/api_routes.py`
 Where the API endpoints are declared 
 
### `app/templates/index.html` 
Store HTML templates

### `app/__init__.py  `
File to indicate that the package can be imported. 

### `app/run.py  `
Application entry point. 
This is where the Flask app is initialized and the routes are registered. 

### `.env.sample  `
It contains sensitive information of credential acesses,  like connection credentials, API keys, etc. 
A template for the .env file. See instructions above.

### `requirements.txt  `
The requirements package for the application


recipea/  
├── app/  
│   ├── api/  
│   │   ├── edamam.py  
│   │   ├── recipea_db.py  
│   ├── db/  
│   │   ├── schema/  
│   │   │    ├── Recipea_App_User_Fed_DB.sql  
│   │   │    ├── Recipea_ERD.mwb  
│   │   ├── mysql_connector.py  
│   ├── routes/  
│   │   ├── api_routes.py  
│   ├── templates/  
│   │   ├── index.html  
│   ├── __init__.py  
│   ├── run.py  
├── docs/  
│   ├── folder_structure.txt  
│   ├── Recipe Match App.docx  
├── .env.sample  
├── requirements.txt  
.gitignore  
README.md