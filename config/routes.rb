Rails.application.routes.draw do
  root "vegetables#index"
  get "/vegetables", to: "vegetables#show"

end
