class AddFieldsToTestimonials < ActiveRecord::Migration[7.1]
  def change
    add_column :testimonials, :name, :string
    add_column :testimonials, :email, :string
    add_column :testimonials, :rating, :integer
    add_column :testimonials, :organisation, :string
    add_column :testimonials, :category, :string
    add_column :testimonials, :experience_type, :string
    add_column :testimonials, :story, :text
    add_column :testimonials, :status, :string
  end
end
