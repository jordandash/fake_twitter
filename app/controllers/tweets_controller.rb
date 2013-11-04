class TweetsController < ApplicationController

	 def index
  	@all_tweets = Tweet.order('id DESC')
  	@tweet = Tweet.new
  end

  def create
		@tweet = Tweet.new(params[:post])
		if (@tweet.save)
			redirect_to :action => :index
		else
			@all_tweets = Tweet.order('id DESC')
			render :action => :index
		end
  end

end
