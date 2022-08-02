Rails.application.routes.draw do
  
  #root 'articles#index'
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'sign_up', to: 'users#new', as: :registration

  resources :sessions
  resources :users
  resources :articles 
    
end
