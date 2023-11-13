Rails.application.routes.draw do
  resources :quizzes  do
      resources :quiz_questions 
end


  resources :questions do
      get "search_by", on: :collection
  end

  root "pages#home"
end
