Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login' => 'sessions#new', as: :login
  get "/secrets/show" => 'secrets#show', as: :secrets_show
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
