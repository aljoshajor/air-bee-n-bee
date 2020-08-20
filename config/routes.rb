Rails.application.routes.draw do
	devise_for :users
  root to: 'pages#home'
  resources :bees do
    resources :bookings, only: [:new, :create]
    resources :likes, only: [:new, :create]
  end
  resources :bookings, only: [:update, :index]
  resources :likes


	# get 'bees/new', to: 'bees#new'
	# get 'bees/:id', to: 'bees#show', as: "bee"
	# get 'bees', to: 'bees#index'
  # post 'bees', to: 'bees#create'
  # get 'bees/:id/bookings/new', to: 'bookings#new'
  # post 'bookings', to: 'bookings#create'





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
