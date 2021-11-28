Rails.application.routes.draw do
  devise_for :users
  root to:'homes#top'
  get 'home/about', to: 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :create, :edit, :update,:index, :show, :destroy]

  resources :users, only: [:index, :show]

end
