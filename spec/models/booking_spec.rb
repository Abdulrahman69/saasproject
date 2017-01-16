require 'rails_helper'

RSpec.describe Booking  do
  
   
   it 'is not be valid without any of Starton or Endon ' do 
       bike = Bike.new 
       expect(bike).not_to be_valid 
   end 
      
end
