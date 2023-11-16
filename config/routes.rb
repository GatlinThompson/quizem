Rails.application.routes.draw do

  resources :quizzes

  #resources :quizzes  do
  #    resources :quiz_questions 
  #end

  resources :quiz_questions, only: [], param: :index do
    member do
      delete '(:id)' => "quiz_questions#destroy", as: ""
      post '/' => "quiz_questions#create"
    end
  end

  resources :questions do
      get "search_by", on: :collection
  end

  root "pages#home"
end
