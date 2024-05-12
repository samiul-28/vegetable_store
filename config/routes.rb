Rails.application.routes.draw do
  root "products#index"
  resources :home
  resources :vegetables
  resources :leafy_greens
  resources :common_items
  resources :users
  resources :products
end
