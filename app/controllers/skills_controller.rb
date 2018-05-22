class SkillsController < ApplicationController

  def index
    @skills = policy_scope(Skill)

  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

end
