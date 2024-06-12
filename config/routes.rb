Rails.application.routes.draw do
  devise_for :users
  
  root "products#index"

  resources :products
  resources :images

  get "/vegetables", to: "products#vegetables"
  get "/leafy_greens", to: "products#leafy_greens"
  get "/common_items", to: "products#common_items"

end
