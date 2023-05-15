

CREATE DATABASE recipea_app_user_fed_db;

USE recipea_app_user_fed_db;

CREATE TABLE recipes (
    recipe_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    recipe_name VARCHAR(155) NOT NULL,
    preparation_time TIME NULL,
    portions INT NULL,
    meal_type VARCHAR(500) NOT NULL,
    health VARCHAR(500) NULL,
    cuisine_type VARCHAR(500) NOT NULL,
    cooking_directions VARCHAR(3500) NOT NULL,
    image_url VARCHAR(800) NULL
);

CREATE TABLE ingredients (
    ingredient_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE measures (
    measure_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE recipes_ingredients (
    recipe_ingredient_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    recipe_ID INT NOT NULL,
    ingredient_ID INT NOT NULL,
    measure_ID INT NULL,
    quantity DECIMAL(10, 2) NULL,
    FOREIGN KEY (recipe_ID) REFERENCES recipes (recipe_ID),
    FOREIGN KEY (ingredient_ID) REFERENCES ingredients (ingredient_ID),
    FOREIGN KEY (measure_ID) REFERENCES measures (measure_ID)
);

INSERT INTO
    ingredients (name)
VALUES
    ('salt'),
    ('pepper'),
    ('olive oil'),
    ('vegetable oil'),
    ('all-purpose flour'),
    ('granulated sugar'),
    ('eggs'),
    ('milk'),
    ('butter'),
    ('chicken'),
    ('beef'),
    ('fish'),
    ('pasta'),
    ('rice'),
    ('potatoes'),
    ('onions'),
    ('garlic'),
    ('tomatoes'),
    ('carrots'),
    ('celery'),
    ('water'),
    ('tapioca flour'),
    ('freshly grated parmesan cheese'),
    ('beaten eggs');

INSERT INTO
    measures (name)
VALUES
    ('teaspoon'),
    ('tablespoon'),
    ('cup'),
    ('ounce'),
    ('pound'),
    ('gallon'),
    ('kilogram'),
    ('gram'),
    ('milliliter'),
    ('liter');

INSERT INTO
    recipes (
        recipe_name,
        preparation_time,
        portions,
        meal_type,
        health,
        cuisine_type,
        cooking_directions,
        image_url
    )
VALUES
    (
        'Brazilian Cheese Bread',
        '00:40:00',
        6,
        'Breakfast',
        'Gluten-Free',
        'Brazilian',
        '1. Heat 1 tablespoon of oil in a large skillet or wok over medium-high heat. Add the chicken and cook until browned on all sides. 2. Add the vegetables and cook until softened, about 5 minutes. 3. Stir in the sauce and cook until heated through, about 2 minutes. 4. Serve over rice or noodles.',
        'https://i.imgur.com/9483456.jpg'
    ),
    (
        'One-Pot Pasta',
        '00:20:00',
        4,
        'Main Course',
        'Comfort Food',
        'Italian',
        '1. Bring a large pot of salted water to a boil. Add the pasta and cook according to the package directions. 2. While the pasta is cooking, heat 1 tablespoon of oil in a large skillet over medium heat. Add the vegetables and cook until softened, about 5 minutes. 3. Add the chicken and cook until browned, about 5 minutes. 4. Stir in the sauce and cook until heated through, about 2 minutes. 5. Drain the pasta and add it to the skillet with the sauce. Toss to coat. 6. Serve immediately.',
        'https://i.imgur.com/7890123.jpg'
    ),
    (
        'Tacos al Pastor',
        '00:30:00',
        4,
        'Main Course',
        'Comfort Food',
        'Mexican',
        '1. Heat the oil in a large skillet over medium heat. Add the onions and cook until softened, about 5 minutes. 2. Add the garlic and cook for 1 minute more. 3. Add the pork and cook until browned on all sides. 4. Add the pineapple, tomatoes, and cilantro. Cook for 10 minutes, or until the pork is cooked through. 5. Serve in tortillas with your favorite toppings.',
        'https://i.imgur.com/6789012.jpg'
    ),
    (
        'Chicken Parmesan',
        '00:45:00',
        4,
        'Main Course',
        'Comfort Food',
        'Italian',
        '1. Preheat the oven to 400 degrees F (200 degrees C). 2. Pound the chicken breasts to 1/4-inch thickness. 3. Dredge the chicken in flour, then egg, then breadcrumbs. 4. Heat the oil in a large skillet over medium heat. 5. Cook the chicken for 2-3 minutes per side, or until golden brown. 6. Transfer the chicken to a baking dish. 7. Top with the tomato sauce and mozzarella cheese. 8. Bake for 15-20 minutes, or until the cheese is melted and bubbly. 9. Serve immediately.',
        'https://i.imgur.com/5432167.jpg'
    ),
    (
        'Chocolate Chip Cookies',
        '00:15:00',
        12,
        'Dessert',
        'Comfort Food',
        'American',
        '1. Preheat the oven to 375 degrees F (190 degrees C). 2. Cream together the butter and sugar until light and fluffy. 3. Beat in the eggs one at a time, then stir in the vanilla. 4. In a separate bowl, whisk together the flour, baking soda, and salt. 5. Gradually add the dry ingredients to the wet ingredients, mixing until just combined. 6. Stir in the chocolate chips. 7. Drop by rounded tablespoons onto ungreased baking sheets. 8. Bake for 10-12 minutes, or until golden brown. 9. Let cool on baking sheets for a few minutes before transferring to a wire rack to cool completely.',
        'https://i.imgur.com/8901234.jpg'
    );

-- Ingredients were only correctly inputted for recipe_ID = 1 (Brazilian cheese bread)
INSERT INTO recipes_ingredients (recipe_ID, ingredient_ID, measure_ID, quantity) VALUES
(1, 3, 3, 1/2),
(1, 21, 3, 1/3),
(1, 8, 3, 1/3),
(1, 1, 1, 1),
(1, 22, 3, 2),
(1, 23, 3, 2/3),
(1, 24, NULL, 2),
(2, 1, 1, 1),
(2, 2, 1, 1),
(2, 3, 1, 1),
(2, 4, 1, 1),
(2, 5, 1, 1/2),
(3, 6, 1, 1),
(3, 7, 1, 1),
(3, 8, 1, 1),
(3, 9, 1, 1),
(3, 10, 1, 1),
(4, 11, 1, 2),
(4, 12, 1, 1),
(4, 13, 1, 1),
(4, 14, 1, 1),
(4, 15, 1, 1/2),
(5, 16, 1, 1/2),
(5, 17, 1, 1),
(5, 18, 1, 1),
(5, 19, 1, 1),
(5, 20, 1, 1/2);

--

-- Recipe data for recipe_ID = 1 (Brazilian cheese bread)
SELECT *
FROM recipes r
WHERE r.recipe_ID = 1;

-- Ingredients for recipe_ID = 1 (Brazilian cheese bread)
SELECT ri.quantity, m.name, i.name
FROM recipes_ingredients ri
INNER JOIN recipes r
    ON r.recipe_ID = ri.recipe_ID
INNER JOIN ingredients i
    ON i.ingredient_ID = ri.ingredient_ID
INNER JOIN measures m
    on m.measure_ID = ri.measure_ID
WHERE r.recipe_ID = 1;

