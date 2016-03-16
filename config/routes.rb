Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root "stories#index"
  resources :stories do
    resources :sentences
  end
end
