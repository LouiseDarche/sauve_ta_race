class BookingsController < ApplicationController
  def new
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new
  end

  def create
  end
end
