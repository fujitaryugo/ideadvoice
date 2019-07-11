Rails.application.routes.draw do
  devise_for :users
  devise_for :clients
  devise_for :admins
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :update]
	namespace :clients do
	    resources :clients, only: [:show, :update] do
	  	resources :orders, only: [:create, :index, :show]

	  end
  	end
  resources :clients, only: [:show]

end
