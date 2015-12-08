class UsersController < ApplicationController
	def index
	end

  def show
  end

  def new
  	#don't touch 
  end

  def edit
  end

  def create
  end

  def update
  	user = User.find(params[:id])
  	user.update(user_params)
  	
  	redirect_to user_path(user.id)
  end

  private

  def user_params
  	params.require(:user).permit(:user_name, :password, :password_confirmation, :email, :bio, :age, :gender, :city, :user_likes)
  end
end
