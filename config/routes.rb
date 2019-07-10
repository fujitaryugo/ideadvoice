Rails.application.routes.draw do
  devise_for :users
  devise_for :clients
  devise_for :admins
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :update]
end
