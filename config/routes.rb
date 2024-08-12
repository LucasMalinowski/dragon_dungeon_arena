Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :characters
  root 'lobby#home'

  get "up" => "rails/health#show", as: :rails_health_check
end
