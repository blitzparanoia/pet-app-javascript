class SittersController < ApplicationController

def new
  @sitter = Sitter.new
end

def create
end

private

def user_params
  params.require(:user).permit(:name, :email, :password)
end

end
