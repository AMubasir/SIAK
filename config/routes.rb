Rails.application.routes.draw do

  resources :lecturers
  root "home#index"

  resources :courses
  resources :majors
  devise_for :users
  resources :users do
    collection do
  		get :select_courses
      post :take_courses
      get :detail 
  	end
  end

end