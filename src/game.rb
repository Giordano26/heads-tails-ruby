require './player.rb'
require './menu.rb'
require './play.rb'

class Game
    def initialize
        @player = Player.new
        @menu = Menu.new("Play","About","Quit")
        @ht_menu = Menu.new("Heads","Tails","Quit")
        @final_menu = Menu.new("Yes","No (quit)")
    end

    def start
        @menu.print_initial_menu
        while(choice = @menu.get_menu_choice)
            case choice 
            when 1
                puts "Let's play!"
                puts
                break
            when 2
                @menu.print_about_game
            when @menu.length_quit
                exit(0)
            end
        end

        while(true)
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
                @player.playerscore.ivalue += 1
                puts "You've won"
                puts "Your new score is #{@player.playerscore.ivalue}"
                puts
            else
                puts "You've lost"
                puts "Your score is  #{@player.playerscore.ivalue}"
                puts
            end

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

    end

end
