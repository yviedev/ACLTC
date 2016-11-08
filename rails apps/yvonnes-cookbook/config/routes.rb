Rails.application.routes.draw do
  get '/place_with_a_recipe' => 'recipes#jay_recipe'
  get '/all' => 'recipes#all_da_recipes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
