Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sitters

  #signup
  get '/signup' => 'sitters#new'
  post '/signup' => 'sitters#create'


end
