Rails.application.routes.draw do
  resources :user_jogos
  resources :users
  resources :jogos
  resources :consoles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end