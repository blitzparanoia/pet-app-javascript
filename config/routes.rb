Rails.application.routes.draw do
  resources :reviews
  resources :companies
  resources :jobs
  resources :users

  #signup
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  #sessions
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/logout' => 'sessions#destroy'

get '/auth/facebook/callback' => 'sessions#facebookcreate'

root 'sessions#home'

resources :companies do
   resources :jobs, only: [:new, :create, :index]
   resources :reviews, only: [:new, :create, :index]
 end


end
