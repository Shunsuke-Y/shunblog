Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_up: ENV['SIGN_UP']}

  resources :blogs
  resources :categories, only: [:show]

  get 'detailed_profile' => 'blogs#detailed_profile'
  root 'blogs#index'
  get 'search' => 'blogs#search'
end
