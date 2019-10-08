Rails.application.routes.draw do

  resources :votes
  resources :questions
  resources :projects
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'

  }
    resources :districts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
