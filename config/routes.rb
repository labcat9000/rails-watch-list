Rails.application.routes.draw do
  get 'bookmarks/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movies, except: [:create, :new]
  resources :lists
  resources :bookmarks, only: [:new, :create, :delete]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
