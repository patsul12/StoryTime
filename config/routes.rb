Rails.application.routes.draw do
  devise_for :users
  root "stories#index"
  resources :stories
  resources :sentences
end
