class Proposal < ActiveRecord::Base
  validates_length_of :twitter_message, :maximum => 120, :allow_blank => true
end
