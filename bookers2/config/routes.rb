Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :homes, only: [:show]
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:show, :new, :create, :edit, :update, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
