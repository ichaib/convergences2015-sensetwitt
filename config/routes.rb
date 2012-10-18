Solitweet::Application.routes.draw do

  root :to => 'pages#deputies' # no home because only one proposition
  
  resources :deputies
  resources :influencers
  resources :proposals
  resources :sent_messages

  # match "choix/:proposal_id" => "pages#deputies", :as => :choice
  match "thank-you" => "pages#thanks", :as => :thanks
  match "about" => "pages#sense_hackers", :as => :sense_hackers
  
  match "admin" => "pages#admin"

end
