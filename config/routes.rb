Rails.application.routes.draw do
  root "products#index"
  resources :users
  resources :products
  resources :images
  resources :suppliers

 
  get "/vegetables", to: "products#vegetables"
  get "/leafy_greens", to: "products#leafy_greens"
  get "/common_items", to: "products#common_items"
end
