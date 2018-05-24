class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
    policy_scope(Booking)
  end

  def new
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new
    authorize(@booking)
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.skill = @skill
    @booking.status = "pending"
    authorize(@booking)
    @booking.save
    redirect_to user_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :skill, :stars_at, :ends_at)
  end


end
