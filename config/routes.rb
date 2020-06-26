# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      resources :cohorts, only: %i[index]
      resources :courses, only: %i[index]
      resources :campus, only: %i[index]
      post '/sign_up' => 'sessions#sign_up'
      post 'login' => 'sessions#login'
    end
  end
end
