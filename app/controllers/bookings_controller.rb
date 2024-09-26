# app/controllers/bookings_controller.rb
class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @motorcycle = Motorcycle.find(params[:motorcycle_id])
    @booking = current_user.bookings.build(motorcycle: @motorcycle)

    if @booking.eligible_to_book?(current_user) && @booking.save
      redirect_to motorcycles_path, notice: "Booking created successfully."
    else
      redirect_to motorcycles_path, alert: "You are not eligible to book this motorcycle."
    end
  end
end
