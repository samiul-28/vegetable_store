Rails.application.routes.draw do
  root "products#index"

  resources :users
  resources :products
  resources :images

  get "/vegetables", to: "products#vegetables"
  get "/leafy_greens", to: "products#leafy_greens"
  get "/common_items", to: "products#common_items"

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
