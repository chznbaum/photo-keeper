Rails.application.routes.draw do
  devise_for :users
  resources :updates do
    resources :comments
  end
  resources :comments do
    resources :comments
  end
  get 'about', to: 'pages#about'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
