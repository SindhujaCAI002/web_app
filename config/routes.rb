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
resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
