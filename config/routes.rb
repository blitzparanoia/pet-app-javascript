Rails.application.routes.draw do
  resources :jobs
  resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  #signup
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  #sessions
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/logout' => 'sessions#destroy'

root 'sessions#home'

end
