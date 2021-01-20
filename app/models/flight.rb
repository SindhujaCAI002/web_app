class Flight < ApplicationRecord
   # before_save {self.start.capitalize() }
    validates :flight_code, presence: true,length: {maximum: 4},
                                           uniqueness: true
    validates :start, presence: true
    validates :destination, presence: true                                       
    validates :date, presence: true
    validates :seats_avail, presence: true
   
end
