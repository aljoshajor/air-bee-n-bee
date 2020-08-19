class BookingsController < ApplicationController

  def new
    @bee = Bee.find(params[:bee_id])
		@booking = Booking.new
  end
  
  def create
	  @booking = Booking.new(booking_params)
    @bee = Bee.find(params[:bee_id])
    @booking.bee_id = @bee.id
    @booking.user_id = current_user.id
    @booking.accepted = false 
		if	@booking.save
			redirect_to bee_path(@bee)
		else
			render :new
		end
  end

  def flip_accepted
    @booking = Booking.find(params[:id])
    if @booking.accepted = true
       @booking.accepted = false
    else
      @booking.accepted = false
       @booking.accepted = true
    end
    redirect_to bee_path(@bee)
  end
  
  private

	def booking_params 
		params.require(:booking).permit(:start_date, :end_date, :user_id, :bee_id, :accepted, :features)
	end
end

