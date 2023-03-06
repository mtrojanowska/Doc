Rails.application.routes.draw do
  root 'home#index'
  resources :themes
  resources :sections
  resources :paragraphs
  resources :exercises
  resources :tasks
  resources :steps
end
