Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/users/new', to: 'users#new'

get '/products/new', to: 'products#new'

end