Rails.application.routes.draw do

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :providers do
    resources :comments
  end

end
