Rails.application.routes.draw do
 devise_for :users
 root to: 'homes#top'

 resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
 resources :users, only: [:index, :show, :create, :edit, :update]
 get 'about' => 'abouts#index'

end
