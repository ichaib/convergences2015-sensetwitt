# encoding: utf-8

module PagesHelper

  def title
    html = "Avec "
    html << '<a href="http://www.animafac.net" target="_blank">Animafac</a>'
    html << ", invite les acteurs de l’enseignement supérieur à faire le pari des associations étudiantes !"
    html.html_safe
  end

end
