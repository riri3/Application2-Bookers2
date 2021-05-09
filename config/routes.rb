Rails.application.routes.draw do
 root to: 'homes#top'
 devise_for :users

 resources :books, only: [:new, :create, :index, :show, :destroy]
 resources :users, only: [:index, :show, :update]
 resources :abouts, only: [:index]

end
