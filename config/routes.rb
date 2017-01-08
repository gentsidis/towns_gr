Rails.application.routes.draw do
  root to: "towns#index"

  #resources :users
  resources :towns
  resources :sections
  resources :kal_cities
  resources :regional_unities
  resources :kap_cities
  resources :prefectures
  resources :regions

  resources :sessions, only: [:new, :create, :destroy]

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
