Rails.application.routes.draw do
 devise_for :users
 root to: 'homes#top'

 resources :books
 resources :users, only: [:index, :show, :create, :edit, :update]
 get 'about' => 'abouts#index'

end
