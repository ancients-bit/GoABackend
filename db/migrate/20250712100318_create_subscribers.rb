class CreateSubscribers < ActiveRecord::Migration[8.0]
  def change
    create_table :subscribers do |t|
      t.timestamps
    end
  end
end
