class CreateParkingSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :parking_spaces do |t|
      t.string :name
      t.decimal :cost_per_hour
      t.boolean :instant_booking

      t.timestamps
    end
  end
end
