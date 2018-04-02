Rails.application.routes.draw do
  resources :products
  # devise_for :users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  # For details on the DSL avai


  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)

  devise_for :users
  resources :users

  root to: 'dashboard#landing_page'
end