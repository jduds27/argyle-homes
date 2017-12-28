Rails.application.routes.draw do
  
  resources :photos
  
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  root to: 'pages#home'

end
