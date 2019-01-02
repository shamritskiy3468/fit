Rails.application.routes.draw do
  resources :patients
  resources :doctors

  namespace :admin do
      resources :doctor_infos
      resources :patient_infos
      resources :patients
      resources :doctors
    root to: "users#index"
  end

  root :to => "pages#home"
  get 'pages/home'
  get 'pages/about'
  get 'pages/contacts'

  devise_for :users, controllers: { registrations: "registrations"}

  resources :users
  # devise_for :patients
  # devise_for :doctors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
