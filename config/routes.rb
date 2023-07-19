Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'results/index'
  root to: "home#index"
  resources :quizzes, only: [:index]
  resources :jobs, only: [:index]
  resources :cords, only: [:index]
  get '/results', to: 'results#index', as: 'results'
  resources :courses do
    resources :lessons, only: [:show]
  end
end
