Rails.application.routes.draw do
  resources :services
  devise_for :users
  root 'home#index'
  get 'home/inicio', as: "inicio"
  get 'servicios' , to: "home#servicios", as: "servicios" 
  get 'servicio/:id' , to: "home#servicio", as: "servicio" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
