class Booking < ActiveRecord::Base
    validates :starton , length: {maximum: 10 },presence: true 
    validates :endon , length: {maximum: 10 },presence: true 
    belongs_to :bike 
end
