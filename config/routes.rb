Rails.application.routes.draw do
  resources :quotes, only: [:index, :new, :create]
  resource :random_combination, only: [:show]

  root 'quotes#index'

  resource :sampled_types, only: [:show]
end
