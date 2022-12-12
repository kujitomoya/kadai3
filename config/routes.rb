
Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "/home/about" => "homes#about", as: "about"

  resources :books, only: [:new, :create, :index, :show, :edit,  :update, :destroy]
  resources :users, only: [:create, :index, :show, :edit, :update]
  #get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end