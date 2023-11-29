Rails.application.routes.draw do

  resources :quizzes

  resources :quiz_questions, only: [], param: :index do
    member do
      delete '(:id)' => "quiz_questions#destroy", as: ""
      post '/' => "quiz_questions#create"
    end
  end

  resources :surveys

  resources :survey_questions, only: [], param: :index do
    member do
      delete '(:id)' => "survey_questions#destroy", as: ""
      post '/' => "survey_questions#create"
    end
  end

  resources :questions do
      get "search_by", on: :collection
  end

  root "pages#home"
end
