class SentMessage < ActiveRecord::Base
  belongs_to :deputy
  belongs_to :influencer
  belongs_to :proposal
end
