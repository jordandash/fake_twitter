class TweetsController < ApplicationController

	 def index
  	@all_tweets = Tweet.order('id DESC')
  end

end
