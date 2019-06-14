class UserController < ApplicationController
  def show
  	@user = current_user
  end

  def edit
  	@user = current_user
  end

  def update
  	@user = current_user
  	@user.update(user_params)
  	redirect_to user_show_path(@user)
  end

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :gender, :date_of_birth)
  end

end
