Rails.application.routes.draw do
  get 'user/show'
  get 'user/edit'
  get 'user/update'
  resources :picture_uploads
  resources :albums
  devise_for :users
  get 'home/index'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
