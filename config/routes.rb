Rails.application.routes.draw do
  get 'relationship/followings'
  get 'relationship/followers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "homes#top"
  get "home/about"=>"homes#about", as: 'about'
  devise_for :users

  resources :books, only: [:index, :create, :show, :edit, :update, :destroy,] do
  resources :book_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
