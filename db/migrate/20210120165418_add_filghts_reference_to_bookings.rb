class AddFilghtsReferenceToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :flights, foreign_key: true
  end
end
