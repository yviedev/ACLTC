class RecipesController < ApplicationController

  def jay_recipe
    @title = "Jay recipe"
    @recipe = Recipe.find_by(id: 2)
    render 'eggs.html.erb'
  end

  def all_da_recipes
    @title = "All recipes"
    @recipes = Recipe.all
    render 'all.html.erb'
  end

  def new_recipe_form
    render 'new_form.html.erb'
  end

  def make_recipe
    @directions = params["form_directions"]
    @title = params["form_title"]
    @chef = params["form_chef"]
    @ingredients = params["form_ingridients"]
    # recipe = Recipe.new(
    #   title: @title,
    #   directions: @directions,
    #   chef: @chef,
    #   ingredients: @ingredients
    #   )
    @recipe = Recipe.new(
      title: params["form_title"],
      directions: params["form_directions"],
      chef: params["form_chef"],
      ingredients: params["form_ingredients"]
      )
    @recipe.save
    # In order to save things in the database, you need a model
    render 'make_recipe.html.erb'
  end

end
