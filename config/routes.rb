Rails.application.routes.draw do
  namespace :admin do 
    resources :preferences, only: [:index]
  end

  resources :songs, only: [:index, :show, :new, :create, :edit, :update]

  resources :artists, only: [:index, :new, :create, :edit, :update]

  resources :artists, only: [:show] do
    resources :songs, only: [:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
