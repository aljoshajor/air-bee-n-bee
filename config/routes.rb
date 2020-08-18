Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'bees/new', to: 'bees#new'
  get 'bees/:id', to: 'bees#show'
  get 'bees', to: 'bees#index'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
