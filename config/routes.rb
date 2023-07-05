Rails.application.routes.draw do
  get 'results/index'
  root to: "home#index"
  resources :quizzes, only: [:index] do
    collection do
      post 'answer'
    end
  end
  get '/results', to: 'results#index', as: 'results'
end
