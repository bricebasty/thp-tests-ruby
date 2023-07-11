# frozen_string_literal: true

# Définition de la méthode "time_string" qui prend un paramètre "seconds" et renvoie une chaîne de caractères formatée représentant le temps
def time_string(seconds)
  # Calcul du nombre d'heures en divisant les secondes par 3600
  hours = seconds / 3600

  # Calcul du nombre de minutes en prenant le reste de la division précédente par 3600 et en divisant par 60
  minutes = (seconds % 3600) / 60

  # Calcul du nombre de secondes en prenant le reste de la division précédente par 60
  seconds = seconds % 60

  # Formatage de la chaîne de caractères en utilisant une syntaxe de formatage avec des valeurs nommées
  format('%<hours>02d:%<minutes>02d:%<seconds>02d', hours: hours, minutes: minutes, seconds: seconds)
end
