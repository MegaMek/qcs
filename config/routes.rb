# frozen_string_literal: true

Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :eras, only: %w[index show]
  resources :factions, only: %w[index show]

  root 'home#index'
end
