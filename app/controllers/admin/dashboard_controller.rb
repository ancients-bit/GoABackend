module Admin
  class DashboardController < ApplicationController
    before_action :authenticate_admin_user!

    def index
      render json: {
        stats: {
          total_bookings: Booking.count,
          new_testimonials: Testimonial.where(status: 'pending').count,
          total_blog_posts: BlogPost.count,
          newsletter_subscribers: Subscriber.count
        },
        recent_bookings: Booking.order(created_at: :desc).limit(5).as_json(only: [:id, :name, :email, :created_at, :status]),
        recent_testimonials: Testimonial.order(created_at: :desc).limit(5).as_json(only: [:id, :name, :rating, :story, :status, :created_at])
      }
    end
  end
end
