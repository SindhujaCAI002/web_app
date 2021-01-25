class AddBookstatusToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :bookstatus, :string
  end
end
