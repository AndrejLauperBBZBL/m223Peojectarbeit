class BookingsController < ApplicationController
  before_action :set_motorcycle

  def new
    @booking = Booking.new
  end

  def create
    @booking = @motorcycle.bookings.build(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @motorcycle, notice: 'Booking request submitted!'
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if current_user == @booking.motorcycle.user && @booking.update(booking_params)
      redirect_to motorcycle_path(@booking.motorcycle), notice: 'Booking approved successfully!'
    else
      redirect_to motorcycle_path(@booking.motorcycle), alert: 'You are not authorized to approve this booking.'
    end
  end

  private

  def set_motorcycle
    @motorcycle = Motorcycle.find(params[:motorcycle_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
