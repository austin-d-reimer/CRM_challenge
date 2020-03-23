Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'customers/missing_email', to: 'customers#missing_email', as: 'missing_email'
  get 'customers/alphabetized', to: 'customers#alphabetized', as: 'alphabetized'
  resources :customers, only: %i[index show]


  root to: 'customers#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
