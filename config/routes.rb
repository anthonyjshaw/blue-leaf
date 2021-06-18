Rails.application.routes.draw do
  root to: 'pages#home'

  # Start with the verb
  # Then the URL
  # Then the controller

  get '/about', to: 'pages#about', as: :about
  get '/menu', to: 'drinks#index', as: :menu
  get 'menu/drinks', to: 'drinks#drinks'
  get 'menu/:category', to: 'drinks#category', as: :category
  resources :drinks, only: %i[show new create edit destroy update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

