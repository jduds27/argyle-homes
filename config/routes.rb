Rails.application.routes.draw do
  
  resources :customers
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :photos
  
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  root to: 'pages#home'

end
