Rails.application.routes.draw do
  get '/first' => 'contacts#first_contact'
  get '/all' => 'contacts#all_contacts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #RESTful
  get '/contacts/new' => 'contacts#new'
  # show post from create
  post 'contacts' =>'contacts#create'
  # create an index and a show using REST
  get '/contacts' => 'contacts#index'
  get '/all_johns' => 'contacts#all_johns'
  get '/contacts/:id' => 'contacts#show'
  # edit and update contacts
  get '/contacts/:id/edit' => 'contacts#edit'
  patch '/contacts/:id' => 'contacts#update'
  delete '/contacts/:id' => 'contacts#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
