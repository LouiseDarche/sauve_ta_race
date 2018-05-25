class Users::SkillsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    skip_policy_scope
    @skills = current_user.skills
  end


end
