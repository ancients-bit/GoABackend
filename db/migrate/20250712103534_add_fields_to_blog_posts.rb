class AddFieldsToBlogPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :blog_posts, :author, :string
    add_column :blog_posts, :blog_picture, :string
    add_column :blog_posts, :blog_topic, :string
    add_column :blog_posts, :content, :text
    add_column :blog_posts, :category, :string
  end
end
