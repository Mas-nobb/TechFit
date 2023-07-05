Rails.application.routes.draw do
  get 'results/index'
  root to: "home#index"
  resources :quizzes, only: [:index]
  resources :jobs, only: [:index]
  get '/results', to: 'results#index', as: 'results'
end
