class AddFieldsToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :name, :string
    add_column :bookings, :email, :string
    add_column :bookings, :phone_number, :string
    add_column :bookings, :organisation, :string
    add_column :bookings, :number_of_persons, :integer
    add_column :bookings, :inquiry, :text
    add_column :bookings, :date_of_booking, :date
  end
end
