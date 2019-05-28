Rails.application.routes.draw do

  resources :accommodations do
    resources :reservations, only: [:index, :new, :create, :show, :my_accommodation]
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
