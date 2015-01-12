class TweetsController < ApplicationController
  
  def show
  	@tweet = Tweet.find(params[:id])
  	render action: :status
  end

  def last
  	@tweet = Tweet.last
  	render action: :status
  end
end
