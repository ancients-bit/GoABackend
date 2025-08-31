Rails.application.routes.draw do
  # 📊 Admin namespace (no authentication required)
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :bookings, only: [:create, :index, :update]
    resources :blog_posts, only: [:index, :create, :update, :destroy, :show]
    resources :contacts, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  end

  # 🌐 Public routes
  resources :bookings, only: [:create, :index, :update]
  resources :subscribers, only: [:create]
  resources :blog_posts, only: [:index, :show]

  # 📩 Public contact form submission
  resources :contacts, only: [:create]

  # 🩺 Health/root
  root to: 'health#index'
end
