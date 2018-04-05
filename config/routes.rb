Rails.application.routes.draw do
  resources :offers
  resources :products
  # devise_for :users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  # For details on the DSL avai


  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)

  devise_for :users
  resources :users
  resources :offers

  root to: 'dashboard#landing_page'

  get 'roles' => 'dashboard#roles'

  get 'access/:id' => 'dashboard#access'

  post 'add_access' => 'access_roles#add_access'

  post 'remove_access' => 'access_roles#remove_access'
end