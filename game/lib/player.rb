require 'pry'

puts "################################################################################################################" 
puts "#                                                                                                              #"                                                                                                          
puts "#   ██████╗██████╗  █████╗ ███████╗██╗   ██╗    ███████╗██╗ ██████╗ ██╗  ██╗████████╗███████╗██████╗ ███████╗  #"
puts "#  ██╔════╝██╔══██╗██╔══██╗╚══███╔╝╚██╗ ██╔╝    ██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝██╔════╝██╔══██╗██╔════╝  #"
puts "#  ██║     ██████╔╝███████║  ███╔╝  ╚████╔╝     █████╗  ██║██║  ███╗███████║   ██║   █████╗  ██████╔╝███████╗  #"
puts "#  ██║     ██╔══██╗██╔══██║ ███╔╝    ╚██╔╝      ██╔══╝  ██║██║   ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗╚════██║  #"
puts "#  ╚██████╗██║  ██║██║  ██║███████╗   ██║       ██║     ██║╚██████╔╝██║  ██║   ██║   ███████╗██║  ██║███████║  #"
puts "#   ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝       ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚══════╝  #"
puts "#                                                                                                              #"
puts "#                                                                                                              #"
puts "# Author        : Mathide                                                                                      #"
puts "# Date          : 15 October 2019                                                                              #"
puts "# Note          : code during training The Hacking Project 2019                                                #"
puts "#                                                                                                              #"
puts "# Bienvenue sur 'ILS VEULENT TOUS MA POO' !                                                                    #"
puts "# Le but du jeu est d'être le dernier suvivant !                                                               #"
puts "# Let's fight !!!!                                                                                             #"
puts "#                                                                                                              #"
puts "################################################################################################################"

class Player
  attr_accessor :name, :life_points

def initialize(name_player)
  @life_points = 10
  @name = name_player
end

def show_state
  puts "#{@name} a #{@life_points} points de vie."
end

def gets_damage(n)
  @life_points = @life_points - n
    
  if @life_points <= 0
    puts "GAME OVER ! Le joueur #{@name} a été tué !"
  else
    puts "Points de vie restants : #{@life_points}"
  end
end

def attacks(player)
  dice = compute_damage
  puts "#{@name} attaque #{player.name} : il lui inflige #{dice} points de dommages"
  player.life_points = player.life_points - dice
end

def compute_damage
  return rand(1..6)
end
end

