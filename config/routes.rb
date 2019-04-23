Rails.application.routes.draw do
  namespace :admin do 
    resources :preferences, only: [:index]
  end 
resources :artists
resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
