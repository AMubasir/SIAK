class UsersController < ApplicationController
  before_action :authenticate_user!, :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if current_user.update_attributes!(user_params)
      redirect_to detail_users_path, notice: "Successfully updated."
    else
      render :edit
    end
  end

  def select_courses
    @courses = Course.all
  end

  def take_courses
    if current_user.update_attributes!(user_params)
      redirect_to detail_users_path
    else
      redirect_to :back
    end
  end

  def detail
    current_user = User.all
  end

  private

  def set_user
  	@user = User.find(params[:id])
  end

  def user_params
    params.permit(course_ids: [])
  end

end
