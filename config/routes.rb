Rails.application.routes.draw do
  
  #root 'articles#index'
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'


  resources :sessions
  
  resources :articles

  resource :user

  resolve("User") { route_for(:user) }

  resources :users
  
    
end
