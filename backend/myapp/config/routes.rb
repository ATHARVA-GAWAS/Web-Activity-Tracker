# config/routes.rb

Rails.application.routes.draw do
  devise_for :users
  resources :website_visits, only: [:create]
  resources :restricted_websites, only: [:index, :create, :destroy]
  resources :time_limits, only: [:index, :create, :destroy]
end
