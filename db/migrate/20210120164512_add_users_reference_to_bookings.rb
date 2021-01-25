class AddUsersReferenceToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :users, foreign_key: true
  end
end
