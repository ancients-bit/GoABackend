class AddAlternateDateToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :alternate_date, :date
  end
end
