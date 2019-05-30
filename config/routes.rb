Rails.application.routes.draw do
  resources :accommodations, only:[:index, :new, :create, :show] do
    collection do
      get :my_accommodations
    end
    resources :reservations, only: [:new, :create, :show,]
  end

  devise_for :users

  resources :reservations, only: [:index, :new, :create] do
    collection do
      get :my_reservation
    end

    member do
      patch :accept
      patch :decline
    end
  end

  root to: 'pages#home'


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


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
