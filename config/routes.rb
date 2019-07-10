Rails.application.routes.draw do
  devise_for :users
  devise_for :clients
  devise_for :admins
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :update]
  resources :clients, only: [:show, :update]
  resources :orders, only: [:create, :index, :show]
end
