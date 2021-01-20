Rails.application.routes.draw do
  get 'flights/listing'
  get 'sessions/new'
  get 'users/new'
  root 'staticpages#home'
  get '/home', to: 'staticpages#home'
  get '/help', to: 'staticpages#help'
  get '/aboutpage', to:'staticpages#aboutpage'
  get '/signup', to: 'users#new'
  get '/login' , to: 'sessions#new'
  post '/login' , to: 'sessions#create'
  delete '/logout' , to: 'sessions#destroy'
  get '/list', to: 'flights#show'
  get '/list' , to: 'flights#new'
  #post '/list' , to: 'flights#create'

  resources :users
  resources :flights
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
