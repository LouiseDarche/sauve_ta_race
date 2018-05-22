class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @skills = policy_scope(Skill)
  end
end
