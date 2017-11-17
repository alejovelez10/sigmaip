Rails.application.routes.draw do
  resources :jobs
  resources :claims
  resources :contacts
  resources :teams
  resources :services
  devise_for :users
  root 'home#index'
  get 'home/inicio', as: "inicio"
  get 'servicios' , to: "home#servicios", as: "servicios"
  get 'nosotros' , to: "home#nosotros", as: "nosotros" 
  get 'contactenos' , to: "home#contactenos", as: "contactenos"
  get 'pqrf' , to: "home#pqrf", as: "pqrf" 
  get 'trabajemos' , to: "home#trabajemos", as: "trabajemos" 
  get 'servicio/:id' , to: "home#servicio", as: "servicio" 
  get 'equipo/:id' , to: "home#equipo", as: "equipo" 
  post 'create_contacto', to: "home#create_contacto", as: "create_contacto"
  post 'create_pqrf', to: "home#create_pqrf", as: "create_pqrf"
  post 'create_trabajo', to: "home#create_trabajo", as: "create_trabajo"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
