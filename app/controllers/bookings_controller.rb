class BookingsController < ApplicationController
  def new
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new
    authorize(@booking)
  end

  def create
  end
end
