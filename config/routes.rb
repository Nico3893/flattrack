Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flats, only: [:index, :show]
  get :dashboard, to: 'pages#dashboard', as: 'dashboard'
  resources :transactions, only: [:new, :create]
  resources :tasks, only: [:new, :create, :show, :edit, :update]
end
