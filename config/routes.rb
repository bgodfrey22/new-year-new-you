Rails.application.routes.draw do
  resources :workouts
  resources :exercises
  devise_for :users

  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'show_user' => 'pages#show_user'
  get 'add_exercise' => 'workouts#add_exercise'
  post 'add_exercise' => 'workouts#connect_exercise'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
