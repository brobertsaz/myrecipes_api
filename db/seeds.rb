# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(email: 'test@example.com', password: 'password', password_confirmation: 'password')
user.save

[
  {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_7045f217437949b2067413af55a9537f",
          "label": "Cranberry-Walnut Chicken Salad",
          "image": "https://www.edamam.com/web-img/4e3/4e3281985350a2a88814608207b0b192.jpg",
          "source": "Smitten Kitchen",
          "url": "http://smittenkitchen.com/2008/10/cranberry-walnut-chicken-salad/",
          "shareAs": "http://www.edamam.com/recipe/cranberry-walnut-chicken-salad-7045f217437949b2067413af55a9537f/chicken/gluten-free",
          "yield": 8,
          "calories": 1325.6236572265625 }

  },
  {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_b79327d05b8e5b838ad6cfd9576b30b6",
          "label": "Chicken Vesuvio",
          "image": "https://www.edamam.com/web-img/e42/e42f9119813e890af34c259785ae1cfb.jpg",
          "source": "Serious Eats",
          "url": "http://www.seriouseats.com/recipes/2011/12/chicken-vesuvio-recipe.html",
          "shareAs": "http://www.edamam.com/recipe/chicken-vesuvio-b79327d05b8e5b838ad6cfd9576b30b6/chicken/gluten-free",
          "yield": 4,
          "calories": 5273.524851576595 }
  },
  {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_be3ba087e212f13672b553ecfa876333",
          "label": "Baked Chicken",
          "image": "https://www.edamam.com/web-img/01c/01cacb70890274fb7b7cebb975a93231.jpg",
          "source": "Martha Stewart",
          "url": "http://www.marthastewart.com/318981/baked-chicken",
          "shareAs": "http://www.edamam.com/recipe/baked-chicken-be3ba087e212f13672b553ecfa876333/chicken/gluten-free",
          "yield": 4,
          "calories": 901.5857499700784 }
  },
  {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_48dac01d5e2d98299e8395b95f472759",
          "label": "Chicken Hekka",
          "image": "https://www.edamam.com/web-img/e35/e3538b8d773b01d60a31369588b10560.jpg",
          "source": "Cookstr",
          "url": "http://www.cookstr.com/recipes/chicken-hekka",
          "shareAs": "http://www.edamam.com/recipe/chicken-hekka-48dac01d5e2d98299e8395b95f472759/chicken/gluten-free",
          "yield": 4,
          "calories": 1372.1169580078126 }
  },
  {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_ac4795627030ca70b0795f96641350cb",
          "label": "Sage Pesto Roasted Chicken",
          "image": "https://www.edamam.com/web-img/cd5/cd581091462bdb9cf9e4f5675b22e0f0.jpg",
          "source": "Not Without Salt",
          "url": "http://notwithoutsalt.com/sage-walnut-pesto-three-ways/",
          "shareAs": "http://www.edamam.com/recipe/sage-pesto-roasted-chicken-ac4795627030ca70b0795f96641350cb/chicken/gluten-free",
          "yield": 4,
          "calories": 5244.24700208374 }
  },
  {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_56008870a1e326be7851141fc49bd53e",
          "label": "Roast Chicken",
          "image": "https://www.edamam.com/web-img/c24/c24a86f98a8cc1f13f795bdba2dae614.jpg",
          "source": "Epicurious",
          "url": "http://www.epicurious.com/recipes/food/views/Roast-Chicken-394676",
          "shareAs": "http://www.edamam.com/recipe/roast-chicken-56008870a1e326be7851141fc49bd53e/chicken/gluten-free",
          "yield": 4,
          "calories": 2384.8974999999996 }
  },
  {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_589c4f7c38014675ad5a3a848c4aa370",
          "label": "Chicken Stock",
          "image": "https://www.edamam.com/web-img/0ec/0ecc99cda650d5da2a2285231c066b84.jpg",
          "source": "Saveur",
          "url": "http://www.saveur.com/article/Recipes/Chicken-Stock",
          "shareAs": "http://www.edamam.com/recipe/chicken-stock-589c4f7c38014675ad5a3a848c4aa370/chicken/gluten-free",
          "yield": 2,
          "calories": 121.48035056161879 }
  },
  {
      "recipe": {
          "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_6289468ceb188ec8103d4a0c4adab6b8",
          "label": "Oven-Roasted Chicken Thighs",
          "image": "https://www.edamam.com/web-img/676/676a9be0cb7bc68b41ccc0ca765969ed.jpg",
          "source": "Leite's Culinaria",
          "url": "http://leitesculinaria.com/97461/recipes-oven-roasted-chicken-thighs.html",
          "shareAs": "http://www.edamam.com/recipe/oven-roasted-chicken-thighs-6289468ceb188ec8103d4a0c4adab6b8/chicken/gluten-free",
          "yield": 4,
          "calories": 3712.142049734703 }
  }

].each do |recipe|
  puts "recipe " + recipe[:recipe][:label]
  new_recipe = Recipe.create(
    uri: recipe[:recipe][:uri],
    label: recipe[:recipe][:label],
    image: recipe[:recipe][:image],
    source: recipe[:recipe][:source],
    url: recipe[:recipe][:url],
    share_url: recipe[:recipe][:shareAs],
    yield: recipe[:recipe][:yield],
    calories: recipe[:recipe][:calories],
    user_id: user.id
  )
  new_recipe.save.to_s
  puts new_recipe.errors.full_messages
end

