class PagesController < ApplicationController
  before_filter :authenticate_http_admin, :only => [:admin]
  
  def home
    @proposals = Proposal.all
  end

  def deputies
    require 'uri'

    @deputies = Deputy.all

    if 1 == 1 # only one proposition
      @proposal = Proposal.first
      @twitter_message = URI.escape @proposal.twitter_message
    else
      @twitter_message = URI.escape Proposal.find(params[:proposal_id]).twitter_message
    end
  end

  def thanks
    require 'uri'

    if 1 == 2
      @influencers = Influencer.all
      @twitter_message = URI.escape Proposal.find(params[:proposal_id]).twitter_message

      if params[:type] == "politicien"
        sent_message = SentMessage.find_or_create_by_deputy_id_and_proposal_id :deputy_id => params[:person_id], :proposal_id => params[:proposal_id]
      elsif params[:type] == "influenceur"
        sent_message = SentMessage.find_or_create_by_influencer_id_and_proposal_id :influencer_id => params[:person_id], :proposal_id => params[:proposal_id]
      end
      sent_message.count += 1
      sent_message.save
    end
  end

end
