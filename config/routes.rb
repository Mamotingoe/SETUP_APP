Rails.application.routes.draw do
  devise_for :users
  resources :spaces
  #
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "spaces#index"

   get '/spaces/:id', to: 'spaces#show'

   get '/spaces/new', to: 'spaces#new'

   post '/spaces', to: 'spaces#create'

end
