Rails.application.routes.draw do
  resources :characters
  root 'lobby#home'

  get "up" => "rails/health#show", as: :rails_health_check
end
