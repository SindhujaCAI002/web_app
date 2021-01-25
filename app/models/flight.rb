class Flight < ApplicationRecord
    has_many :bookings
    before_save {self.start = self.start.capitalize()}
    before_save {self.destination = self.destination.capitalize()}
    validates :flight_code, presence: true,length: {maximum: 4},
                                           uniqueness: true
    validates :date, presence: true
    validates :start, presence: true
    validates :destination, presence: true                                       
    validates :seats_avail, presence: true
   
end
