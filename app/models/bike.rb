class Bike < ActiveRecord::Base
    validates :bikename , length: {maximum: 50 },presence: true 
    validates :bikemodel , length: {maximum: 4 },presence: true 
    validates :biketype , length: {maximum: 50 },presence: true 
  
    has_many :reviews 
    has_many :bookings 
end
