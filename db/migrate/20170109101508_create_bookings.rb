class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :parking_space_id
      t.string :parking_space_name
      t.decimal :price_per_hour
      t.decimal :total_price
      t.integer :number_of_hours
      t.boolean :payment_status
      t.integer :user_id, index: true, unique: true, foreign_key: true

      t.timestamps
    end
  end
end
