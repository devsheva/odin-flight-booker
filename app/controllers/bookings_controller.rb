class BookingsController < ApplicationController
  include BookingsHelper

  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:flight])
    @passenger_count = params[:passenger_count].to_i
    @passenger_count.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

end
