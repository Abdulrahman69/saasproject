class BookingsController < ApplicationController
 
  def new
   @bike = Bike.find(params[:id])
   @booking = @bike.bookings.build
  end
  
  def create 
    @bike = Bike.find(params[:id])
    @booking = @bike.bookings.build(booking_param)
    @booking.save
    redirect_to new_booking_path(:id => @bike.id)
  end 
  
  private 
  
  def booking_param
      params.require(:booking).permit(:starton,:endon)
  end 
end
