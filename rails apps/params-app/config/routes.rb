Rails.application.routes.draw do
  get '/message' => 'queries#show_message'
  get '/mean_message' => 'queries#insult'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
