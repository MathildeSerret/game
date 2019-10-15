require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def start_game1 
  player1 = Player.new("Attila")
  return player1
end

def start_game2 
  player2 = Player.new("Zelda")
  return player2
end

def new_game
  player1 = start_game1
  player2 = start_game2

  puts "Joueur numéro 1 : #{player1.name}"
  puts "Joueur numéro 2 : #{player2.name}"
  puts " "
  puts "La partie commence !"
  puts " "
end

def attack_phase
  player1 = start_game1
  player2 = start_game2

  puts "Passons à la phase d'attaque !"
  puts " "
  t = 1

  while player1.life_points > 0 || player2.life_points > 0
  puts "------ TOUR #{t}"
  t = t + 1 
       
  player1.attacks(player2)
  player2.show_state
  break if player2.life_points < 1
  player2.attacks(player1)
  player1.show_state
  break if player1.life_points < 1
  puts " "
end
    
 if player1.life_points < 1
   loser = player1.name
  else
   loser = player2.name
end

return loser

end

def end_game
  player1 = start_game1
  player2 = start_game2
  loser = attack_phase

  puts " "
  puts "#{loser} killed... GAME OVER !"
end

def perform
    new_game
    end_game
end

perform



