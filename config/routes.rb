Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
    resources :comments
    member do
      put 'like' => 'posts#vote'
    end
  end
  resources :tags, only: [:show]
  resources :categories
end
