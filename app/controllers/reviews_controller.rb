class ReviewsController < ApplicationController
def create
    @skill = Skill.find(params[:skill_id])
    @review = Review.new(review_params)
    authorize(@review)
    @review.skill = @skill
    @review.user = current_user
    if @review.save
      respond_to do |format|
        format.html { redirect_to skill_path(@skill) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'skills/show' }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end

