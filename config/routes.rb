Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts do
    resources :comments
    member do
      put 'like' => 'posts#vote'
    end
  end
  resources :tags, only: [:show]
end
