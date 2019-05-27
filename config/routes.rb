Rails.application.routes.draw do
  get 'accommodations/index'
  get 'accommodations/create'
  get 'accommodations/new'
  get 'accommodations/show'
  get 'accommodations/my_reservation'
  get 'accommodations/accepted'
  get 'accommodations/declined'
  get 'reservations/index'
  get 'reservations/create'
  get 'reservations/new'
  get 'reservations/show'
  get 'reservations/my_accommodation'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
