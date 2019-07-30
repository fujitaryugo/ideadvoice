Rails.application.routes.draw do

  namespace :clients do
    get 'users/show'
  end
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
	namespace :clients do
    resources :clients, only: [:show, :update]
    resources :presents, only: [:create]
  	resources :orders, only: [:create, :update, :destroy, :index, :show] do
  		resources :ideas, only: [:show] do
  			resource :awards, only: [:create, :destroy]
  		end
  	end
    resources :users, only: [:show]
	end

  resources :users, only: [:show, :update]
  resources :clients, only: [:show]
  resources :orders, only: [:index, :show] do
  	resources :ideas, only: [:create, :show, :update, :destroy] do
  		resources :comments, only: [:create, :destroy]
  		resource :favorites, only: [:create, :destroy]
  	end
  end

  resources :admins ,only: [:index]

  namespace :admins do
    resources :users, only: [:index, :show]
    resources :clients, only: [:index, :show]
    resources :orders, only: [:index, :show, :destroy] do
      resources :ideas, only: [:show, :destroy] do
        resources :comments, only: [:destroy]
      end
    end
  end

end
