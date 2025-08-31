Rails.application.routes.draw do
  # 🔐 Admin authentication via Devise (custom SessionsController)
  devise_for :admin_users,
             path: 'admin',
             controllers: {
               sessions: 'admin/sessions'
             }

  # 📊 Admin-only namespace
  namespace :admin do
    get 'dashboard', to: 'dashboard#index'
    resources :bookings, only: [:create, :index, :update]
    resources :blog_posts, only: [:index, :create, :update, :destroy, :show]
    resources :contacts, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  end

  # 🆕 Custom sessions routes wrapped in devise_scope for Devise compatibility
  devise_scope :admin_user do
    post '/admin/sessions', to: 'admin/sessions#create'
    delete '/admin/sessions', to: 'admin/sessions#destroy'
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
