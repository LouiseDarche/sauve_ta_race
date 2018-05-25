class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @skills = policy_scope(Skill)
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query OR category ILIKE :query OR location ILIKE :query"
      @skills = Skill.where(sql_query, query: "%#{params[:query]}%")
    else
      @skills = Skill.where.not(user: current_user)
    end
  end

  def show
    @skill = Skill.find(params[:id])
    authorize(@skill)
    @markers =
      [{
        lat: @skill.latitude,
        lng: @skill.longitude#,
        #infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
            }]
  end

  def new
    @skill = Skill.new
    p @skill
    authorize(@skill)
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    authorize(@skill)
    if @skill.save
    #change to right path
      redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:id])
    authorize(@skill)
  end

  def update
    @skill = Skill.find(params[:id])
    authorize(@skill)
    @skill.update(skill_params)
    if @skill.save
      redirect_to skill_path(@skill)
    else
      render :new
    end

  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path
    authorize(@skill)
  end

  private

  def skill_params
    params.require(:skill).permit(:user, :name, :description, :location, :price, :photo, :category)
  end

end
