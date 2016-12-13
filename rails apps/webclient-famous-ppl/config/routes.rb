Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/famouspeople' => 'persons#index'
  get '/famouspeople/new' => 'persons#new'
  post '/famouspeople' => 'persons#create'
  get '/famouspeople/:id' => 'persons#show'
  get '/famouspeople/:id/edit' => 'persons#edit'
  patch '/famouspeople/:id' => 'persons#update'
  delete '/famouspeople/:id' => 'persons#destroy'

end
