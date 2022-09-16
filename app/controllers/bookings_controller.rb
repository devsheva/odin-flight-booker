class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:flight])
    @passenger_count = params[:passenger_count]
  end
end
