Rails.application.routes.draw do
  get '/name' => 'queries#name'
  get '/guess_a_number/:wildcard' => 'queries#guess_a_number'
  get '/guess_a_number_form' => 'queries#guess_a_number_form'
  get '/count' => 'queries#get_count'
  get '/practice/:idaho' => 'queries#wild'
  get '/message' => 'queries#new_message'
  post '/show_a_new_message' => 'queries#show_the_message'
  post 'guess_number_result' => 'queries#guess_number_result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
