class SittersController < ApplicationController

def new
  @sitter = Sitter.new
end

def create
  @sitter = Sitter.new(user_params)
  if @sitter.save
    session[:sitter_id] = @sitter.id
    redirect_to sitter_path(@sitter)
  else
    render :new
  end
end

def show
end

private

def user_params
  params.require(:sitter).permit(:name, :email, :password)
end

end
