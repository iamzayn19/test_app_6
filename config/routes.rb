Rails.application.routes.draw do
  resources :articles
  #root 'articles#index'
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'sign_up', to: 'users#new', as: :registration
  post 'sign_in', to: 'users#sign_in'
end
