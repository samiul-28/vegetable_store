Rails.application.routes.draw do
  root "vegetables#index"
  resources :vegetables
  resources :leafy_greens
  resources :common_items
  resources :users
end
