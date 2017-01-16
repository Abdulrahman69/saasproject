class Booking < ActiveRecord::Base
     validates :starton  ,presence: true 
     validates :endon  ,presence: true 
    belongs_to :bike 
end
