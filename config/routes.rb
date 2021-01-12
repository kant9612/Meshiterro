Rails.application.routes.draw do
  # deviseを使用する際にURLとしてusersを含むことを示している
  devise_for :users
  root to: 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
end
