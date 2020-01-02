# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'users#show'
  resource :users, only: %i[show edit update]
end
