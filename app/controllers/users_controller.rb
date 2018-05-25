class UsersController < ApplicationController

  def show
    @user = current_user
    authorize(@user)
  end

  def edit
    @user = User.find(params[:id])
    authorize(@user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize(@user)
    if @user.save
      redirect_to skills_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :location, :specie, :status, :photo)
  end

end
