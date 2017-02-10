Rails.application.routes.draw do
  
  resources :user_jogos
  resources :livros
  resources :users
  resources :consoles

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
