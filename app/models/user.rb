  class User < ApplicationRecord
    has_many :bookings
  before_save { self.email = self.email.downcase }
    validates :name, presence: true, length: {maximum: 30 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 200},
                                       format: {with: VALID_EMAIL_REGEX},
                                       uniqueness: true



                                       
     has_secure_password
     validates :password, presence: true, length: {minimum:7}   
     def User.digest(string)                          
         cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                Bcrypt::Engine.cost

         BCrypt::Password.create(string, cost: cost)
     end

    end