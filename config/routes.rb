Rails.application.routes.draw do
  resources :comments
  resources :notices
  resources :new_categories
  resources :customers
  resources :experiences
  resources :jobs
  resources :claims
  resources :contacts
  resources :teams
  resources :services
  devise_for :users
  root 'home#inicio'
  get 'home/inicio', as: "inicio"
  get 'servicios' , to: "home#servicios", as: "servicios"
  get 'experiencias' , to: "home#experiencias", as: "experiencias"
  get 'entradas/:categoria' , to: "home#noticias", as: "noticias"
  get 'nosotros' , to: "home#nosotros", as: "nosotros" 
  get 'contactenos' , to: "home#contactenos", as: "contactenos"
  get 'pqrf' , to: "home#pqrf", as: "pqrf" 
  get 'trabajemos' , to: "home#trabajemos", as: "trabajemos" 
  get 'servicio/:id' , to: "home#servicio", as: "servicio" 
  get 'experiencia/:id' , to: "home#experiencia", as: "experiencia" 
  get 'entrada/:id' , to: "home#noticia", as: "noticia"
  get 'equipo/:id' , to: "home#equipo", as: "equipo" 
  post 'create_contacto', to: "home#create_contacto", as: "create_contacto"
  post 'create_pqrf', to: "home#create_pqrf", as: "create_pqrf"
  post 'create_trabajo', to: "home#create_trabajo", as: "create_trabajo"
  post 'create_comentario', to: "home#create_comentario", as: "create_comentario"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
