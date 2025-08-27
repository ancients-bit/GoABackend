Rails.application.routes.draw do
  # 🔐 Admin authentication via Devise (custom SessionsController)
  devise_for :admin_users,
             path: 'admin',
             controllers: {
               sessions: 'admin/sessions'
             }

  # 📊 Admin-only namespace
  namespace :admin do
    # 📈 Admin dashboard metrics and recent activity
    get 'dashboard', to: 'dashboard#index'

    # 📅 Admin bookings management
    resources :bookings, only: [:create, :index, :update]   # <--- added :update

    # 📰 Admin blog post management
    resources :blog_posts, only: [:index, :create, :update, :destroy, :show]
  end

  # 🌐 Public routes
  # 📩 Public booking submission and viewing
  resources :bookings, only: [:create, :index, :update] 
    # <--- added :update
  resources :subscribers, only: [:create]
  # 📰 Public blog post display
  resources :blog_posts, only: [:index, :show]
end
