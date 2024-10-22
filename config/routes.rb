Rails.application.routes.draw do
  resources :comments
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :posts
  resources :club_houses
  devise_for :users
end
