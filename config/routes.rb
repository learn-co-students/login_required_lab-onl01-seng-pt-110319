Rails.application.routes.draw do
  get '/home' => 'sessions#home'
  post '/create' => 'sessions#create'
  get '/new' => 'sessions#new'
  post '/destroy' => 'sessions#destroy'
  get '/show' => 'secrets#show'
end
