Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home' => 'sessions#home'
  post '/create' => 'sessions#create'
  get '/new' => 'sessions#new'
  post '/destroy' => 'sessions#destroy'
  get '/show' => 'secrets#show'
end
