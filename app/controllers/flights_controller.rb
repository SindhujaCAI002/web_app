class FlightsController < ApplicationController
  def show
    render 'listing'
  end
  def new
   @flight = Flight.new
  end
  def create
    binding.pry
    @flight = Flight.new(flight_params)
    if @flight.save
      flash[:success] = "Updated"
      redirect_to @flight
    else
      render 'listing'
    end
  end
  private
  def flight_params
    params.require(:flight).permit(:flight_code, :date, :start, :destination, :seats_avail)
  end
  end
  
