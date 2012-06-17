Burger.destroy_all
Location.destroy_all
Restaurant.destroy_all
User.destroy_all

test = User.create( email: "test@example.com", password: "password" )
test2 = User.create( email: "test2@example.com", password: "password" )

kuma = Restaurant.create( name: "Kuma\'s Corner", description: "Kumas offers the finest fare for burger lovers in all of Chicago. For the last five years, weve been cranking out some of the most creative, mouthwatering burgers this side of Jupiter. Whether you want to be immersed in heavy metal culture or you are just looking for the best burger youve ever eaten in your life, Kumas Corner has all of the ducks in a row to satiate your most intimate meat craving desires.")
grange = Restaurant.create( name: "Grange Hall Burger Bar", description: "Inside this rustic buger bar, look for farm-friendly touches like 10-foot exterior barn doors, antique furniture and wallpaper, an exposed pie-making kitchen and family-style dining tables.The burger menu is fairly streamlined, focusing on what they do best grass-fed, hormone- and antibiotic-free beef, with options for turkey or vegetarian lentil patties as well.")

kuma.burgers.create(name: "OUR FAMOUS KUMA BURGER", description: "Bacon, Cheddar, Fried Egg - $10")
kaijo = kuma.burgers.create(name: "Kaijo", description: "Bacon, Bleu Cheese, Frizzled Onions - $13")
bs = kuma.burgers.create(name: "Black Sabbath", description: "Blackening Spice, Chili, Pepper Jack, Red Onion - $13")
yob = kuma.burgers.create(name: "YOB", description: "Smoked Gouda, Bacon, Roasted Red Peppers, Roasted Garlic Mayo - $13")
im = kuma.burgers.create(name: "Iron Maiden", description: "Avocado, Cherry Peppers, Pepper Jack, Chipotle Mayo - $13")
kuma.burgers.create(name: "Slayer", description: "Pile of fries topped with a 10 oz. Burger, Chili, Cherry Peppers, Andouille, Onions, Jack Cheese, and Anger - $15")
kuma.burgers.create(name: "Neurosis", description: "Cheddar, Swiss, Sauteed Mushrooms, Caramelized Onions, Horseradish Mayo - $13")
grange.burgers.create(name: "Grass-fed, farm-raised Beef Burger", description: "Your choice of cheeses and toppings")
grange.burgers.create(name: "Free-range Turkey Burger", description: "Your choice of cheeses and toppings")
grange.burgers.create(name: "Wild Rice Vegetable Burger", description: "Your choice of cheeses and toppings")

kaijo.reviews.create( user_id: test.id, title: "Amazing Burger", rating: 9, content:" It was amazing!  I love to try unusual stuff and this was up there as far as burgers go.  And the fact that it was served on a delicious pretzel roll, as all of the burgers are, made it even better!")
kaijo.reviews.create( user_id: test2.id, title: "Take it or leave it", rating: 4, content:"I wasn\'t very impressed. My burger was overcooked and just did not tast that good.  I wouldn\'t go out of my way to come here again.")






