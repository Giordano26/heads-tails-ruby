require './player.rb'
require './menu.rb'
require './play.rb'

class Game
    def initialize
        @player = Player.new
        @menu = Menu.new("Play","About","Quit")
        @ht_menu = Menu.new("Heads","Tails","Quit")
        @final_menu = Menu.new("Yes","No (quit)")
        @mux = 1
        @strikes = 0
        @game_state = 1
    end

    def start
        while(1)
            case @game_state
            when 1
                @menu.print_initial_menu
                while(choice = @menu.get_menu_choice)
                    case choice 
                    when 1
                        puts "Let's play!"
                        puts
                        @game_state = 2
                        break
                    when 2
                        @menu.print_about_game
                    when @menu.length_quit
                        exit(0)
                    end
                end
            
            when 2
                @menu.print_choice_menu
       
                while(ht_choice = @ht_menu.get_menu_choice)
                    case ht_choice
                    when 1
                        puts "You picked heads!"
                        puts
                        break
                    when 2
                        puts "You picked tails!"
                        puts
                        ht_choice = 0  # h = 1 t = 0
                        break
                    when @ht_menu.length_quit
                        exit(0)
                    end
                end

                @play = Play.new(ht_choice)
                @play = @play.start
                if @play == 1
                    @strikes += 1
                    if @strikes > 1
                        @mux = 2
                    end
                    @player.playerscore.ivalue += (1 * @mux)
                    puts "You've won"
                    puts "You have #{@player.lifes} lifes left"
                    puts "Your new score is #{@player.playerscore.ivalue}"
                    puts
                else
                    if @player.lifes == 0
                        @game_state = 3
                    else
                        puts "You've lost one life"
                        @strikes = 0
                        @player.lifes -= 1
                        puts "You have #{@player.lifes} lifes left"
                        puts "Your score is  #{@player.playerscore.ivalue}"
                        puts
                    end
                end

                if @game_state!= 3
                    puts "Wanna play again?"
                    while(final_choice = @final_menu.get_menu_choice)
                        case final_choice
                        when 1
                            puts "Restarting..."
                            puts
                            break
                        when @final_menu.length_quit
                            puts "Thanks for playing!"
                            exit(0)
                        end
                    end
                end
            when 3
                puts "You've lost all your lifes"
                puts "Your final score was #{@player.playerscore.ivalue}"
                puts "Thanks for playing !!!"
                exit(0)
            end
        end
    end
end