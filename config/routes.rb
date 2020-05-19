Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#new"
  get "/secrets/show", to: "secrets#show", as: "top_secret"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
  root to: "application#hello"
end
