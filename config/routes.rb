Rails.application.routes.draw do
  resources :file_systems
  resources :rols
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


  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_scope :user do 
    get "users/index", to: "users/views#index", as: "users_index"
    get '/users/new', to: 'users/views#new_user', as: "new_user"
    post "create_user", to: "users/views#create_user", as: "create_user"
    get '/users/:id/edit', to: 'users/views#edit_user', as: "edit_user"
    post "/users/update_user/edit", to: "users/views#update_user", as: "update_user"
    delete "delete_user/:id", to: "users/views#delete_user", as: "delete_user"

  end


  get 'sub_folder/:level/:id', to: 'file_systems#sub_folder', as:'sub_folder'
  post 'create_document' , to: 'file_systems#create_document', as: 'create_document'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
