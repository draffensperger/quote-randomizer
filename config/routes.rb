Rails.application.routes.draw do
  resources :quotes
  resource :random_combination

  root 'quotes#index'
end
