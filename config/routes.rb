Rails.application.routes.draw do
  resources :articles
  #root 'articles#index'
  root 'pages#home'
  get 'about', to: 'pages#about'
end
