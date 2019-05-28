Rails.application.routes.draw do
  root to: 'pages#home'
  resources :accommodations
  # get "/accommodations", to: "accommodations#index"
  # post "/accommodations", to: "accommodations#create"
  # get "/accommodation/new", to: "accommodations#new"
  # get "/accommodations/:id", to: "accommodations#show"
  # get "/accommodations/reservations", to: "accommodations#reservations"
  # get "/accommodations/accepted", to: "accommodations#accepted"
  # get "/accommodations/declined", to: "accommodations#declined"
  # get 'reservations/index'
  # get 'reservations/create'
  # get 'reservations/new'
  # get 'reservations/show'
  # get 'reservations/my_accommodation'
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
