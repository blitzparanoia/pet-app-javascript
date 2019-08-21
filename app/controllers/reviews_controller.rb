class ReviewsController < ApplicationController

def index
end

def new
end

def create
end

private

def review_params
  params.require(:review).permit(:content, :rating)
end

end
