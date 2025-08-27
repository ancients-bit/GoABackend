class BlogPost < ApplicationRecord
  validates :author, :blog_topic, :content, :category, presence: true
end
