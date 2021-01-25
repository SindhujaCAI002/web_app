Rails.application.routes.draw do
  get 'bookings/new'
  get 'flights/listing'
  get 'sessions/new'
  get 'users/new'

  root 'staticpages#home'
  get '/home', to: 'staticpages#home'
  get '/help', to: 'staticpages#help'
  get '/aboutpage', to:'staticpages#aboutpage'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login' , to: 'sessions#new'
  post '/login' , to: 'sessions#create'
  delete '/logout' , to: 'sessions#destroy'
  get '/list', to: 'flights#show'
  get '/list' , to: 'flights#new'
  post '/list' , to: 'flights#create'
  get '/book', to: 'bookings#show'
  get '/book' ,  to: 'bookings#new' 
  post '/book' , to: 'bookings#create'
  get '/cancel' ,  to: 'bookings#cancel'
  #get '/cancel' , to: 'bookings#edit'
  post '/cancel' , to: 'bookings#update'
  resources :users
  resources :flights
  resources :sessions
  resources :bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
