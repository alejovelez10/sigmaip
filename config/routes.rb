Rails.application.routes.draw do
  resources :services
  devise_for :users
  root 'home#index'
  get 'home/inicio', as: "inicio"
  get 'servicios' , to: "home#servicios", as: "servicios" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
