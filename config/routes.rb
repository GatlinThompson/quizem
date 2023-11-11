Rails.application.routes.draw do
  resources :quizzes
  resources :questions do
      get "search_by_bank", on: :collection
  end

  root "questions#index"
end
