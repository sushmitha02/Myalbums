class UserController < ApplicationController
  def show
  	@user = current_user
  end

  def edit
  	@user = current_user
    @user.addresses.build
  end

  def update
  	@user = current_user
  	@user.update(user_params)
  	redirect_to user_show_path(@user)
  end

  def user_params
  	params.require(:user).permit(
      :first_name, :last_name, :gender, :date_of_birth,
      addresses_attributes: [
        :address_line_1, :state, :id, :city, :pincode , :_destroy
     ])
  end

end
