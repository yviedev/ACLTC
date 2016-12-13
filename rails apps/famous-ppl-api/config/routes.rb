Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get 'famouspeople' => 'persons#index'
      get "famouspeople/:id" => 'persons#show'

      post 'famouspeople' => 'persons#create'
      patch 'famouspeople/:id' => 'persons#update'
      delete "famouspeople/:id" => 'persons#destroy'
    end

    namespace :v2 do
      get 'famouspeople' => 'persons#index'
      get "famouspeople/:id" => 'persons#show'

      post 'famouspeople' => 'persons#create'
      patch 'famouspeople/:id' => 'persons#update'
      delete "famouspeople/:id" => 'persons#destroy'
    end
  end
end
