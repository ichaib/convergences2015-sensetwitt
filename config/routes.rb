Solitweet::Application.routes.draw do

  root :to => 'pages#deputies' # no home because only one proposition
  
  resources :deputies
  resources :influencers
  resources :proposals
  resources :sent_messages

  # match "choix/:proposal_id" => "pages#deputies", :as => :choice
  match "merci/(:proposal_id/:type/:person_id)" => "pages#thanks", :as => :thanks
  match "sense-hackers" => "pages#sense_hackers", :as => :sense_hackers
  match "a-propos" => "pages#about", :as => :about
  
  match "admin" => "pages#admin"

end
