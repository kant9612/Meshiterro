Rails.application.routes.draw do
  root to: 'post_images#index'
  # deviseを使用する際にURLとしてusersを含むことを示している
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
end
