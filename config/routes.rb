Rails.application.routes.draw do
  resources :exercises
  devise_for :users

  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'show_user' => 'pages#show_user'
  get 'workouts' => 'workouts#index'
  get 'add_exercise' => 'workouts#add_exercise'
  post 'add_exercise' => 'workouts#connect_exercise'
  get 'new_workout' => 'workouts#new_workout'
  post 'new_workout' => 'workouts#create_workout'
  get 'show_workout' => 'workouts#show_workout'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
