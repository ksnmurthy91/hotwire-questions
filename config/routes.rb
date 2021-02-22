Rails.application.routes.draw do
  resources :comments do
    resources :comments
  end
  resources :questions do
    resources :comments
  end
  root to: 'questions#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
