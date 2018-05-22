class SkillsController < ApplicationController

  def index
    @skills = policy_scope(Skill)

  end

# elsa
  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
    authorize(@skill)
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    authorize(@skill)
    @skill.save
    #change to right path
    redirect_to skills_path
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def skill_params
    params.require(:skill).permit(:user, :name, :description, :location, :price)
  end

end
