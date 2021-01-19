class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :flight_id , null: false, primary_key: true
      t.date :date
      t.string :start
      t.string :destination
      t.integer :seats_avail

      t.timestamps
    end
  end
end
