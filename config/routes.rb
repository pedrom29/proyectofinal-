Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :votes
  resources :questions
  resources :projects
  root 'votes#index'
  




  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'

  }
    resources :districts




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
