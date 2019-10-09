 # ligne très importante qui appelle la gem.

require 'twitter'
require 'dotenv'# Appelle la gem Dotenv

# n'oublie pas les lignes pour Dotenv ici…

Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)

# et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV


# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["SNEYDhCYgGYpv1Ajgn7QZnLhN "]
  config.consumer_secret     = ENV["R3umwcuEOTnr5fLkFC8dNlLBeaX78XCGBaj7LoRGcb6gp34WTM "]
  config.access_token        = ENV["1179179893701128204-VQ1oqPflKwH1pHnasQ396frVOiEtOf"]
  config.access_token_secret = ENV["hW317ShHCA1RK3GRzYeLgE0cKABklGjCLa82uGkR2LnKO"]
end

# ligne qui permet de tweeter sur ton compte
client.update('Mon premier tweet en Ruby !!!!')
