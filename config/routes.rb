Rails.application.routes.draw do
  namespace :admin do 
    resources :preferences, only: [:index]
  end

  resources :songs

  resources :artists, only: [:index, :new, :create, :edit, :update]

  resources :artists, only: [:show] do
    resources :songs, only: [:show, :new, :edit, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
