class Proposal < ActiveRecord::Base
  validates_length_of :twitter_message, :maximum => 110, :allow_blank => true
end
