class Booking < ApplicationRecord
    belongs_to :user  , class_name: 'User' , foreign_key: 'user_id'
    belongs_to :flight , class_name: 'Flight' , foreign_key: 'flight_id'
    validates :user_id ,presence: true
   validates :flight_id , presence: true
   #binding.pry 

  before_validation :ensure_flightid_presence
  
   protected 
   def ensure_flightid_presence
    #binding.pry
     return false if Flight.find_by_id(self.flight_id).nil?
   end

end

