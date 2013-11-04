class Tweet < ActiveRecord::Base
  attr_accessible :tweet_text

  validates :tweet_text, :presence => true
  validates :tweet_text, :length => {:minimum => 1, :maximum => 140}
end
