class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # If user saves in the db successfully:
      flash[:notice] = "注册成功！"

      session[:user_id] = user.id.to_s
      redirect_to root_path
    else
      # If user fails model validation - probably a bad password or duplicate phone:
      flash.now.alert = "注册失败！"
      render :new
    end
  end

  private
  def user_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :phone, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:user).permit(:name, :phone, :password, :password_confirmation, :auth_info)
  end
end
