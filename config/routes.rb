Rails.application.routes.draw do
  devise_for :users
  root to: 'bees#index'
  get 'bees/:id', to: 'bees#show'
  get 'bees/new', to: 'bees#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
