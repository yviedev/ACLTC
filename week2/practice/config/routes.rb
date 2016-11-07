Rails.application.routes.draw do
  # if the url is x then run a certain method
  get '/about' => 'pages#info_about'
  get '/contact' => 'pages#contact'
  get '/services' => 'pages#dev_services'
  get '/blog' => 'pages#blog'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
