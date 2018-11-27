Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  get :search, controller: :home
  get :searchPost, controller: :home
  root to: 'home#home'  
  resources :regions
  resources :cities
  resources :attractions
  resources :posts do
  	resources :comments
  end
  resources :itineraries do 
    resources :dailies
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users
  devise_for :users, path: '/account', path_names: { sign_in: 'login', sign_out: 'logout'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
