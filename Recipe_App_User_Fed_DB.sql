CREATE DATABASE recipe_app_user_fed_db;

USE recipe_app_user_fed_db;

CREATE TABLE recipe_data (
    recipe_ID INT NOT NULL PRIMARY KEY,
    recipe_name VARCHAR(155) NOT NULL,
    preparation_time TIME NOT NULL,
    portions INT NOT NULL,
    ingredients VARCHAR(1055) NOT NULL,
    cooking_directions VARCHAR(3500) NOT NULL  
);

INSERT INTO recipe_data(recipe_ID, recipe_name, preparation_time, portions, ingredients, cooking_directions)
 VALUES 
 (1, "Brazilian Cheese Bread", "00:40:00", 6,
	"½ cup olive oil or butter,
    ⅓ cup water,
    ⅓ cup milk or soy milk,
    1 teaspoon salt,
    2 cups tapioca flour,
    ⅔ cup freshly grated Parmesan cheese,
    2 beaten eggs",
    "Preheat the oven to 375 degrees F (190 degrees C).
    Combine olive oil, water, milk, and salt in a large saucepan and place over high heat.
    Bring to a boil and immediately remove from the heat.
    Stir in tapioca flour and garlic, stirring until smooth.
    Set aside to rest for 10 to 15 minutes.
    Stir cheese and eggs into tapioca mixture until combined;
    the dough will be chunky, like cottage cheese.
    Drop dough by 1/4 cup-size balls onto an ungreased baking sheet.
    Bake in the preheated oven until the tops are lightly browned, 15 to 20 minutes."),
    
 (2, "Beef Wellington", "1:45:00", 4,
	"1 pound thick beef tenderloin
	Kosher salt and freshly ground black pepper
	2 tablespoons extra virgin olive oil
	2 tablespoons yellow mustard
	1 pound mushrooms
	4 thin slices ham
	1 (7 to 8 1/2-ounce sheet) puff pastry
	2 large egg yolks, beaten
	Flaky salt, for sprinkling on top",
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
	Note that reheated slices will be closer to medium or well-done."),
    
 (3, "Potato Varenyky",  "1:20:00", 12,
	"Vareniki Dough:
    2 cups whole milk,
    ½ cup unsalted butter 1 stick,
    4 cups all-purpose flour plus more for rolling,
    1 egg,
    1 teaspoon kosher salt
    
    Potato Filling:
    4 large russet potatoes peeled and quartered,
	6 tablespoons unsalted butter,
	kosher salt for water to taste,
	2 bay leaves,
	¼ cup whole milk
    
    To Serve:
    unsalted butter,
    sour cream,
    fresh dill or green onions,
    caramelized onions optional,
    crispy bacon optional",
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
    Or kick it up a notch and cook up some caramelized onions and bacon to add as a topping along with sour cream and fresh herbs."),
    
 (4, "Papanasi", "00:55:00", 4,
	"200 g cow's cheese (or feta cheese),
    1 egg,
    1 cup plain flour,
    ½ teaspoon bicarbonate of soda,
    zest of one lemon,
    ½ cup granulated sugar,
    2 cups vegetable oil to fry,
    sour cream,
    jam",
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
	Serve with sour cream and jam."),
    
 (5, "Galaktoboureko", "00:50:00", 12,
	"For the syrup:
    900 g granulated sugar,
    550 g water,
    130 g glucose,
    1 stick(s) cinnamon,
    2 cloves,
    orange peels, of 2 oranges,
    
    For the cream:
    2 oranges,
    1 liter whole milk,
    250 g granulated sugar,
    130 g semolina fine,
    270 g butter, ice-cold, cut into cubes,
    4 eggs, medium,
    1 g vanilla powder,
    450 g phyllo dough sheets
    
    To serve:
    orange peels, from the syrup,
    12 cloves",
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
	Serve with the orange peels from the syrup and cloves.");