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
    if @booking.save
      respond_to do |format|
        format.html { redirect_to user_bookings_path(current_user) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end


  def update
    @booking = Booking.find(params[:id])
    @booking.update(status: "confirmed")
    authorize(@booking)
    redirect_to users_skills_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.update(status: "refused")
    authorize(@booking)
    redirect_to users_skills_path
  end


  private

  def booking_params
    params.require(:booking).permit(:user, :skill, :starts_at, :ends_at)
  end


end
