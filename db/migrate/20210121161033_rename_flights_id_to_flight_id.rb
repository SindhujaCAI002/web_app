class RenameFlightsIdToFlightId < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :flights_id, :flight_id
 
  end
end
