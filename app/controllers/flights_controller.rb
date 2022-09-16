class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.city, a.id] }
    unless search_params.empty?
      selected_date = params[:takeoff].to_date
      @available_flights = Flight.where(departure_id: params[:departure_id], arrival_id: params[:arrival_id],
                                        takeoff: selected_date)
    else
      return
    end
  end

  private

  def search_params
    params.permit(:departure_id, :arrival_id, :takeoff, :passenger_count)
  end
end
