Rails.application.routes.draw do
  resources :beers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'beers#index'

  namespace :api do
    namespace :v1 do
      get 'beers/index'
      post 'beers/create'
      delete 'beers/:id', to: 'beers#destroy'
    end
  end
end
