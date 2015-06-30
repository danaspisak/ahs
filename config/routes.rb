Rails.application.routes.draw do
  resources :surveys
  resources :questions
  resources :interviews
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
