Rails.application.routes.draw do

  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
  }
  devise_for :clients, controllers: {
  sessions:      'clients/sessions',
  passwords:     'clients/passwords',
  registrations: 'clients/registrations'
  }
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :update]
	namespace :clients do
	    resources :clients, only: [:show, :update]
	  	resources :orders, only: [:create, :update, :destroy, :index, :show] do
	  		resources :ideas, only: [:show] do
	  			resource :awards, only: [:create, :destroy]
	  		end
	  	end
	  	resources :presents, only: [:create]
  	end

  resources :clients, only: [:show]
  resources :orders, only: [:index, :show] do
  	resources :ideas, only: [:create, :show, :update, :destroy] do
  		resources :comments, only: [:create, :destroy]
  		resources :favorites, only: [:create, :destroy]
  	end
  end

end
