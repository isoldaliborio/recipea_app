CREATE DATABASE recipea_app_user_fed_db;

USE recipea_app_user_fed_db;

CREATE TABLE recipe_data (
    recipe_ID INT NOT NULL PRIMARY KEY,
    recipe_name VARCHAR(155) NOT NULL,
    preparation_time TIME NOT NULL,
    portions INT NOT NULL,
    meal_type VARCHAR(500) NOT NULL,
    health VARCHAR(500) NOT NULL,
    cuisine_type VARCHAR(500) NOT NULL,
    ingredients VARCHAR(1055) NOT NULL,
    cooking_directions VARCHAR(3500) NOT NULL,
    image_url VARCHAR(800) NOT NULL
);

CREATE TABLE recipe_ingredients (
    ingredients_ID INT NOT NULL PRIMARY KEY,
    recipe_ID INT NOT NULL,
    ingredient_name VARCHAR(300) NOT NULL,
    ingredients_measures VARCHAR(200) NOT NULL
);

INSERT INTO recipe_data(recipe_ID, recipe_name, preparation_time, portions, meal_type, health, cuisine_type, ingredients, cooking_directions, image_url)
 VALUES 
 (1, "Brazilian Cheese Bread", "00:40:00", 6, "Breakfast", "Gluten-Free", "Brazilian",
    "Preheat the oven to 375 degrees F (190 degrees C).
    Combine olive oil, water, milk, and salt in a large saucepan and place over high heat.
    Bring to a boil and immediately remove from the heat.
    Stir in tapioca flour and garlic, stirring until smooth.
    Set aside to rest for 10 to 15 minutes.
    Stir cheese and eggs into tapioca mixture until combined;
    the dough will be chunky, like cottage cheese.
    Drop dough by 1/4 cup-size balls onto an ungreased baking sheet.
    Bake in the preheated oven until the tops are lightly browned, 15 to 20 minutes.",
    "https://upload.wikimedia.org/wikipedia/commons/e/e9/P%C3%A3o_de_queijo.jpg"
    ),
    
 (2, "Beef Wellington", "1:45:00", 4, "Dinner", "Low-Carb", "British",
    "Preheat the oven:
	Allow the oven to preheat to 400°F as you assemble the Wellington.
    Sear the beef:
	Season the beef generously with salt and pepper.
    Heat 2 tablespoons of oil in a large pan on high heat.
    Sear the beef in the pan on all sides until well browned, about 2 to 3 minutes per side.
    Brush the beef with mustard:
	Remove the beef from the pan and let cool.
    Once cooled, brush the beef on all sides with mustard.
    Prepare the mushrooms:
	Chop the mushrooms and put them into a food processor.
    Pulse until very finely chopped.
	Heat the sauté pan on medium-high heat.
    Transfer the mushroom mixture into the pan and cook.
    Allow the mushrooms to release their moisture for 10 to 15 minutes.
	When the moisture released by the mushrooms has all boiled away,
    remove the mushrooms from the pan and set aside to cool.
    Wrap the beef in mushroom paste and ham:
	Roll out a large piece of plastic wrap.
    Lay out the slices of ham on the plastic wrap so that they overlap and are large enough to wrap around and encapsulate the beef.
	Spread the mushroom mixture over the ham.
    Place the beef in the middle and roll the mushroom and ham over the beef,
    using the plastic wrap so that you do this tightly.
	Wrap up the beef into a tight barrel shape, twisting the ends of the plastic wrap to secure.
    Refrigerate for 20 minutes.
    Roll out the puff pastry and wrap the beef:
	On a lightly floured surface,
    roll out the puff pastry sheet to a size that will wrap around the beef.
	Unwrap the beef from the plastic wrap and place in the middle of the pastry dough.
    Brush the edges of the pastry with the beaten egg yolks.
    Fold the pastry around the beef, cutting off any excess at the ends.
	Place on a small plate, seam side down,
	and brush beaten egg yolks all over the top. Chill for 5 to 10 minutes.
    Brush with the egg wash and score:
	Place the pastry-wrapped beef on a baking pan.
    Brush the exposed surface again with beaten eggs.
    Score the top of the pastry with a sharp knife, not going all the way through the pastry.
    Sprinkle the top with coarse salt.
    Bake in the oven:
	Bake at 400°F for 25 to 35 minutes.
    The pastry should be nicely golden when done.
    To ensure that your roast is medium rare, test with an instant read meat thermometer.
	Pull out at 125 to 130°F for medium rare.
    Remove from oven and let rest for 10 minutes before slicing.
    Slice in 1-inch thick slices.
	Leftover slices can be stored in the fridge for up to 2 days.
    Wrap tightly with foil and reheat in a 350°F oven.
    Once warm, remove the foil and bake for a few minutes more to crisp the pastry.
	Note that reheated slices will be closer to medium or well-done.",
    "https://upload.wikimedia.org/wikipedia/commons/a/a9/Beef_Wellington_2019.jpg"),
    
 (3, "Potato Varenyky",  "1:20:00", 12, "Dinner", "Vegetarian", "Ukranian",
    "Potato Filling
	Bring a large pot to a boil, salt with water to taste.
    Peel the potatoes and cut into quarters.
    Add to water along with bay leaves and cook uncovered on medium heat until fork tender.
    About 10-12 minutes.
	Remove from heat, drain water and remove bay leaves.
	Add butter and mash until smooth.
    Add milk and using a spoon whip the potatoes until combined.
    
    Make Varenyky
    Add milk and butter pieces into a pot and heat until butter melts on low heat.
    Mix to combine. Let cool for 5 minutes.
	In a bowl add flour, salt and 1 egg, whisked.
    Slowly add in the slightly cooled milk and butter mixture. Stir to combine.
	Once dough is formed, add some flour on your countertop and knead the dough for 2-3 minutes.
	Set the dough aside and cover to rest for 10 minutes.
	Once you are ready to make your first batch of vareniki, divide your dough into 3 pieces.
    Cover the pieces you aren’t using.
	Roll out the dough thinly on a floured surface to just under 1/8” thickness.
    Using either glass or a 3 inch cookie cutter, cut out round shapes.
	Keep the shapes as close as possible, keeping the scraps (add them to the unused dough to reuse).
    
    Assemble Varenyky
    Add 1/2 Tbsp of potatoes over each round piece of dough,
    fold over in half and pinch together to seal and make a half moon shape.
    To ensure a tight seal, crimp the edges a second time with a pinch and twist motion.
	Place the prepared vareniki on a floured baking sheet to prevent sticking.
    
    Cooking Varenyky
	Bring a large pot of water to a rolling boil and add kosher salt to taste.
    Carefully add fresh or frozen vareniki once water has boiled.
	Cook for about 10-12 minutes, then once the vareniki are floating and water is back to a boil,
    the dough should be very tender. Carefully remove to a bowl with a slotted spoon.
    Add butter and gently toss to combine.
    Add to a bowl, top with sour cream and fresh dill or green onions and enjoy.
    Or kick it up a notch and cook up some caramelized onions and bacon to add as a topping along with sour cream and fresh herbs.",
    "https://upload.wikimedia.org/wikipedia/commons/6/65/Warenyky1.jpg"),
    
 (4, "Papanasi", "00:55:00", 4, "Dessert", "Vegetarian", "Romanian",
    "Grate or crumble the cheese and add it to a large bowl.
    Mix in the egg, sugar, lemon zest and bicarbonate of soda.
    Add the flour and knead until you get a dough that is still very slightly sticky.
    Shape it into a ball.
    Let the dough to rest for about 15-20 minutes.
    Divide the dough into 4 smaller balls.
    Each ball will then be devided into 2,
    we will need about ¾ of that dough for the main doughnut and ¼ for the small ball that goes on top.
	We will then have 4 doughnuts and 4 small balls in total.
	To make the doughnut, just use your thumbprint to make a hole in the middle of the dough and give it a nice round shape.
	Heat up a large pan and add the oil.
	Add one doughnut and one ball and let them fry on each side for about 2 minutes until golden.
	Remove with a spatula and transfer to a plate lined with kitchen towel to absorbe any excess oil.
	Repeat with the remaining doughnuts and balls.
	Serve with sour cream and jam.",
    "https://upload.wikimedia.org/wikipedia/commons/7/7f/Papanasi-romaniancook.jpg"),
    
 (5, "Galaktoboureko", "00:50:00", 12, "Dessert", "Vegetarian", "Greek",
    "For the syrup:
    Place a pot over medium heat, add the sugar, the water, the glucose, the cinnamon,
    the cloves, the orange peels, and let them come to a boil.
    Remove the pot from the heat and set the syrup aside to cool.
    
    For the cream:
    Place a pot with water over medium heat, add the oranges and boil them for 1 hour.
    Make sure that they are constantly covered with plenty of water and, if needed,
    add more water during boiling. 
	Remove the oranges from the pot and set them aside to cool.
	Cut the boiled oranges in half, remove the seeds, and juice them well.
    Beat the oranges in a food processor until they are pureed. Set them aside until needed.
	Place a pot over medium heat, add the milk, the sugar, and let the milk come to a boil.
	Add the semolina and whisk well for 4-5 minutes, until the cream thickens.
	Remove the pot from the heat, add the 50 g of ice-cold butter along with the orange puree,
    whisk well, and set aside for 5-10 minutes so that the temperature of the cream drops. 
	Add the eggs one by one, the vanilla powder, and whisk until homogenized.
    
    To Assemble:
    Preheat the oven to 160°C (320°F) set to fan.
	Melt the remaining 220 g butter in the microwave or in a pot.
	With a pastry brush, butter a 30x35 cm baking pan well.
	Place the first phyllo sheet in the pan and drizzle it with plenty of butter,
    making sure that the pastry brush does not touch the phyllo. 
	Follow the same process for the remaining five phyllo sheets and then,
    press them lightly with your hands.
    Add the filling on top, spread it well with a spoon,
    and turn the edges of the phyllo inwards. Drizzle the cream with a little butter.
	Follow the same process for the rest of the phyllo sheets.
    Attention!
    Do not forget to drizzle the phyllo sheets, one by one, with butter.
	Place the last phyllo sheet carefully on top, flip the edges inwards, press them with the pastry brush,
    and brush them with butter. This way, you will “seal” the galaktoboureko.
	With a knife, score the galaktoboureko into 12 pieces, slightly cut them,
    and pour the rest of the butter over them.
    Bake in the oven for 1 hour and 30 minutes.
	Take the galaktoboureko out of the oven and pour the cold syrup over it.
	Set it aside to cool and absorb the whole syrup.
	Serve with the orange peels from the syrup and cloves.",
    "https://upload.wikimedia.org/wikipedia/commons/7/7d/Galaktoboureko.jpg");
    
    
    INSERT INTO recipe_data(recipe_ID, recipe_name, preparation_time, portions, meal_type, health, cuisine_type, ingredients, cooking_directions, image_url)
 VALUES 
 (1, 1, "olive oil", "½ cup"),
 (1, 1, "water", "½ cup"),
 (1, 1, "milk", "½ cup"),
 (1, 1, "salt", "1 teaspoon"),
 (1, 1, "tapioca flour", "2 cups"),
 (1, 1, "Parmesan cheese", "⅔ cup"),
 (1, 1, "eggs", "2"),
 (2, 2, "thick beef tenderloin", "1 pound"),
 (2, 2, "Kosher salr", "-"),
 (2, 2, "ground black pepper", "-"),
 (2, 2, "extra virgin olive oil", "2 tablespoons"),
 (2, 2, "yellow mustard", "2 tablespoons"),
 (2, 2, "mushrooms", "1 pound"),
 (2, 2, "thin slices of ham", "4"),
 (2, 2, "puff pastry", "7 to 8 1/2-ounce sheet"),
 (2, 2, "egg yolk", "2 large"),
 (2, 2, "flaky salt", "-"),
 (3, 3, "whole milk", "2¼ cups"),
 (3, 3, "unsalted butter", "1 stick"),  
 (3, 3, "all-purpose flour", "4 cups"),
 (3, 3, "eggs", "1"),
 (3, 3, "Kosher salt", "1 teaspoon"),  
 (3, 3, "russet potatoes", "4 large"),
 (3, 3, "unsalted butter", "6 tablespoons"),
 (3, 3, "bay leaves", "2"),  
 (3, 3, "sour cream", "-"),
 (3, 3, "fresh dill", "-"),
 (3, 3, "caramelized onions", "-"),  
 (3, 3, "crispy bacon", "-"),
 (4, 4, "white cheese", "200 g"),
 (4, 4, "egg", "1"),
 (4, 4, "plain flour", "1 cup"),
 (4, 4, "bicarbonate of soda", "½ teaspoon"),
 (4, 4, "zest of lemon", "one"),
 (4, 4, "granulated sugar", "½ cup"),
 (4, 4, "vegetable oil", "2 cups"),
 (4, 4, "sour cream", "-"),
 (4, 4, "jam", "-"),
 (5, 5, "granulated sugar", "1.15 kg"),
 (5, 5, "water", "550 g"),
 (5, 5, "glucose", "130 g"),
 (5, 5, "cinnamon", "1 stick"),
 (5, 5, "cloves", "14"),
 (5, 5, "orange", "2"),
 (5, 5, "orange peels", "2"),
 (5, 5, "whole milk", "1 liter"),
 (5, 5, "fine semolina", "130 g"),
 (5, 5, "butter", "270 g"),
 (5, 5, "eggs", "4 medium"),
 (5, 5, "vanilla powder", "1 g"),
 (5, 5, "phyllo dough sheets", "450 g");

INSERT INTO recipe_data(recipe_ID, recipe_name, preparation_time, portions, ingredients, cooking_directions)
 VALUES 
 (6, "The Scary Cartoon", "1:23:00", "PG"),
 (7, "The Coming Of Age", "1:40:00", "12A"),
 (8, "The War", "2:07:00", "15"),
 (9, "The War", "2:07:00", "15"),
 (10, "The War", "2:07:00", "15"),
 (11, "The War", "2:07:00", "15"),
 (12, "The War", "2:07:00", "15"),
 (13, "The War", "2:07:00", "15"),
 (14, "The War", "2:07:00", "15"),
 (15, "The Murder Mystery", "1:47:00", "15");