Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  root 'homes#top'
  get 'homes/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
