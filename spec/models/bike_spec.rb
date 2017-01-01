require 'rails_helper'

RSpec.describe Bike  do
   
  # bike {Bike.new}
 
   it 'is not valid without any of BikeName or BikeModel or BikeType' do 
       bike = Bike.new 
       expect(bike).not_to be_valid 
   end 
   
   it 'is not valid wuth BikeName length more than 50 ' do 
       bike = Bike.new 
       bike.bikename = 'a' * 51
       expect(bike).not_to be_valid 
   end 
   
   it 'is not valid with BikeModel length more than 4 ' do 
       bike = Bike.new 
       bike.bikemodel = 'a' * 5
       expect(bike).not_to be_valid 
   end 
   
end
