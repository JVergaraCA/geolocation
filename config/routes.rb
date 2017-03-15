Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
    }
get 'pages/get_address'
  post 'pages/direccion'
  root 'pages#index'
  get 'pages/index2'
  get 'pages/index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
