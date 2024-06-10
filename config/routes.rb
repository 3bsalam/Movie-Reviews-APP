Rails.application.routes.draw do
  root 'movies#index' # Set the root path to the movies index
  resources :movies, only: [:index]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check
end
