module Admin
  class BlogPostsController < ApplicationController
    
    before_action :set_blog_post, only: [:update, :destroy]

    def index
      posts = BlogPost.order(created_at: :desc)
      render json: posts
    end

    def create
      post = BlogPost.new(blog_post_params)
      if post.save
        render json: { message: "Post created successfully", data: post }, status: :created
      else
        render json: { error: post.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def update
      if @blog_post.update(blog_post_params)
        render json: { message: "Post updated successfully", data: @blog_post }, status: :ok
      else
        render json: { error: @blog_post.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @blog_post.destroy
      render json: { message: "Post deleted successfully" }, status: :ok
    end

    private

    def set_blog_post
      @blog_post = BlogPost.find(params[:id])
    end

    def blog_post_params
      params.require(:blog_post).permit(:author, :blog_topic, :blog_picture, :content, :category)
    end
  end
end
