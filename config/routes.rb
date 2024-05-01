Rails.application.routes.draw do
  get 'search/index'
  devise_for :users

  namespace :admin do
    resources :dashboard
  end

  # get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"

  get "albums/:id", to: "pages#show", as: "album"
  get 'search', to: 'search#index'
  get 'random_album', to: 'pages#random_album'
end
