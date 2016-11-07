Rails.application.routes.draw do
  get '/new_fortune' => 'pages#new_fortune'
  get '/lottery' => 'pages#lottery'
  get '/views' => 'pages#info_views'
  get '/lyrics' => 'pages#lyrics'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
