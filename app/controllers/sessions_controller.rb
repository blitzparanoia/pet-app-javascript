class SessionsController < ApplicationController

#methods needed new, create, home, destroy
def new
  @user = User.new
end

def create
  
end

def destroy
  session.clear
  redirect_to '/'
end

end
