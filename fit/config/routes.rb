Rails.application.routes.draw do
  root :to => "pages#home"
  get 'pages/home'
  get 'pages/about'
  get 'pages/contacts'
  # devise_for :users
  resources :users
  devise_for :patients
  devise_for :doctors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
