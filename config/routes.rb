Rails.application.routes.draw do
  root "vegetables#index"
  resources :vegetables

end
