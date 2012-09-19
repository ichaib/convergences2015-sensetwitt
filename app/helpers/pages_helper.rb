# encoding: utf-8

module PagesHelper

  def title
    html = "Avec "
    html << '<a href="http://www.convergences2015.org/" target="_blank">Convergence2015</a> '
    html << ", soutiens les objectifs du millénaire en tweetant !"
    html.html_safe
  end

end
