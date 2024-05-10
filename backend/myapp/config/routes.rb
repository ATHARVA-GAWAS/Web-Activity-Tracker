# config/routes.rb

Rails.application.routes.draw do
  namespace :api do
    resources :my_users, only: [:create]
  end
end
