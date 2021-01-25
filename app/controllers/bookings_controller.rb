class BookingsController < ApplicationController
before_action :logged_in_user, only: [:create, :update]
  def show
    render 'new'
  end
  def new
    @booking = Booking.new
  end
  def create
    @booking = Booking.new(booking_params)
    @booking.bookstatus = "booked"
     #booking_params.merge({bookstatus: "booked"}) 
    if @booking.save
       flash[:success] = "booked successfully!!"
      redirect_to @booking
    else
      render 'new'
    end 
  end
  def cancel
    #binding.pry
    @s = Booking.where(user_id: current_user[:id])
    render 'cancel'
  end
    def update
      #binding.pry
      #@booking = Booking.new(cancel_params)
      @booking = Booking.find_by(flight_id: params[:flight_id])
      if @booking.user_id == current_user[:id]
          @booking.bookstatus = "cancelled"
          if @booking.save
           flash[:success] = "flight cancelled"
           redirect_to @booking
          else
            render 'cancel'
          end
      else
          flash[:warning] ="you didn't booked"    
          render 'cancel'
      end
  end
  private
  def booking_params
    params.permit(:user_id , :flight_id)
    #params.require(:booking).permit(:type)
   
    #booking_params.merge({boookstatus: "booked"})
    #@booking.bookstatus = "booked"
  end
  def logged_in_user 
    unless logged_in?
       flash[:danger] = "Please log in."
         redirect_to login_url
   end
  end
end
