class BikesController < ApplicationController
   before_action :authenticate_user! ,except: [:index ]

  def index
    @bikes = Bike.all
  end

  def new
    @bike = current_user.bikes.build
  end
 
  def create
     @bike = current_user.bikes.build(bike_param)
     if @bike.save
       redirect_to users_path
     end 
  end
  
  
  def book
    
  end
  def show 
    
  end 
  
  private 
  
    def bike_param
      params.require(:bike).permit(:bikename, :biketype,:bikemodel)
    end 
end
