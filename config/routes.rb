Rails.application.routes.draw do
  resources :parkings
  resources :users
  resources :registros
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user#new', controller: :user, action: :new, alias: 'user_new'
  get 'Parkings#new', controller: :parkings, action: :new, alias: 'Parking_new'  
  get 'Parkings#index', controller: :parkings, action: :index, alias: 'Parkings'  



  get 'pages/inicio'
  root 'pages#inicio'
  #root 'registros#index'

  get 'pages/nosotros'
  get 'pages/servicios'
  get 'pages/contactenos'
  get 'parkings/index'

   #Login
  get 'sessions/new'

  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
