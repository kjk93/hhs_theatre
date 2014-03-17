class UsersController < ApplicationController
  before_action :admin_user, only: :destroy
  before_action :ultimate_admin

  def show
    @user = User.find_by(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save #save is successful
      sign_in @user
  		flash[:success] = "Thank you for joining HHS Theatre"
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  private
  	def user_params 
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end

    def admin_user
    end

    def ultimate_admin
    end

end
