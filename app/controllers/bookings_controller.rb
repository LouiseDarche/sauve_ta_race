class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new
    authorize(@booking)
  end


end
