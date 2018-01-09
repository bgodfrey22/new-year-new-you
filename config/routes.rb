Rails.application.routes.draw do
  resources :exercises
  devise_for :users

  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'show_user' => 'pages#show_user'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
