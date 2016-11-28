Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/songs' => 'songs#index'
  get '/songs/new' => 'songs#new'
  post  '/songs' => 'songs#create'
  get '/songs/:id' => 'songs#show'
  get 'songs/:id/edit' => 'songs#edit'
  patch 'songs/:id' => 'songs#update'
  delete 'songs/:id' => 'songs#destroy'  

end
