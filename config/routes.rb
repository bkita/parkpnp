Rails.application.routes.draw do
  root 'parking_spaces#index'
  get  'parking_spaces', to: 'parking_spaces#index'
  get  'static/index',   to: 'static_pages#index'
  devise_for :users
end
