def input_pokemon_type()
    while true
        puts "Please choose from these types!"
        player_type = gets.chomp.capitalize()
        if player_type == "Fire" or player_type == "Grass" or player_type == "Rock" or player_type == "Ice" or player_type == "Ground"
            return player_type
        else
            puts"Please choose a valid type!"
        end
    end
end


def random_pokemon_type()
    enemy_type_number = rand(1..5)
    if enemy_type_number == 1
        enemy_type = "Fire"
    elsif enemy_type_number == 2
        enemy_type = "Grass"
    elsif enemy_type_number == 3
        enemy_type = "Rock"
    elsif enemy_type_number == 4
        enemy_type = "Ice"
    elsif enemy_type_number == 5
        enemy_type = "Ground"
    end
    return enemy_type
end


def main()
    puts """Here are your choices: 
  Fire
  Grass
  Rock
  Ice
  Ground

  Remember:
    Fire beats grass and ice 
    Grass beats rock and ground
    Rock beats fire and ice
    Ice beats grass and ground
    Ground beats fire and rock!"""

    player_health = 100
    enemy_health = 100

    while player_health > 0 and enemy_health > 0
        player_type = input_pokemon_type()
        enemy_type = random_pokemon_type()
        if player_type == enemy_type
            puts "You both chose #{player_type}! It's a tie!"
        else
            has_fire_advantage = (player_type == "Fire" and (enemy_type == "Grass" or enemy_type == "Ice"))
            has_grass_advantage = (player_type == "Grass" and (enemy_type == "Rock" or enemy_type == "Ground"))
            has_rock_advantage = (player_type == "Rock" and (enemy_type == "Fire" or enemy_type == "Ice"))
            has_ice_advantage = (player_type == "Ice" and (enemy_type == "Grass" or enemy_type == "Ground"))
            has_ground_advantage = (player_type == "Ground" and (enemy_type == "Fire" or enemy_type == "Rock"))

            has_player_advantage = (has_fire_advantage or has_grass_advantage or has_rock_advantage or has_ice_advantage or has_ground_advantage)

            if has_player_advantage
                puts "The computer chose #{enemy_type}! You win!"
                enemy_health -= rand(10..30)
            else
                "The computer chose #{enemy_type}! You lose!"
                player_health -= rand(10..30)

            end
        end
       if player_health <= 0
            puts "Player health: 0"
            puts "Computer health: #{enemy_health}"
       elsif enemy_health <= 0
            puts "Player health: #{player_health}"
            puts "Computer health: 0"
       else
            puts "Player health: #{player_health}"
            puts "Computer health: #{enemy_health}"
       end
    end

    if player_health <= 0
        puts"You were defeated by the computer!\n"
    elsif enemy_health <= 0
        puts "You defeated the computer!\n"
    end
end

main()