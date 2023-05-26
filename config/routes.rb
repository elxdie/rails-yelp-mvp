Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # A visitor can see the list of all restaurants.
  get 'restaurants', to: 'restaurants#index'
  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  # # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # # A visitor can add a new review to a restaurant
  # get 'restaurants/:id/reviews/new'
  # post 'restaurants/:id/reviews'
end
