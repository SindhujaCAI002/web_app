Rails.application.routes.draw do
  get 'users/new'
  root 'staticpages#home'
  get '/home', to: 'staticpages#home'
  get '/help', to: 'staticpages#help'
  get '/signup', to: 'users#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
