class ReviewsController < ApplicationController
def create
    @skill = Skill.find(params[:skill_id])
    @review = Review.new(review_params)
    @review.skill = @skill
    if @review.save
      redirect_to skill_path(@skill)
    else
      render 'skills/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end

