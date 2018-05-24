class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @skills = Skill.where.not(user: current_user)
  end
end
