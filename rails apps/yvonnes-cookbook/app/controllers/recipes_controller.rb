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

end
