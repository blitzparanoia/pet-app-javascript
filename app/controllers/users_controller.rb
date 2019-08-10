class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    session[:user_id] = @user.id
    #"user not valid"
    #is you want to redirect back to login :new (new_users_path) / or another page
    redirect_to pets_path
  else
    render :new
  end
end

def show
end

private

def user_params
  params.require(:user).permit(:name, :email, :password)
end

end
