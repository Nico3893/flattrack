Rails.application.routes.draw do
  get 'participations/index'
  get 'participations/create'
  get 'comments/index'
  get 'comments/create'
  get 'inventories/index'
  get 'inventory/index'
  get 'tasks' , to: 'pages#dashboard'
  
  devise_for :users
  root to: 'pages#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flats, only: [:index, :show] do
    resources :transactions, only: [:new, :create]
    resources :tasks, only: [ :new, :create, :edit, :update]
    resources :inventories, only: [ :index, :destroy ]
  end
end
