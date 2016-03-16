Rails.application.routes.draw do
  devise_for :users
  root "stories#index"
  resources :stories do
    resources :sentences
  end
end
