require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def new
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new
  end

  def create


  end

end
