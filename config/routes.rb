Rails.application.routes.draw do
  root 'movies#index'

  resources :movies, only: [:index]
  resources :reviews, only: [:index]

  get "up" => "rails/health#show", as: :rails_health_check
end
