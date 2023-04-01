require './player.rb'
require './menu.rb'
#require './play.rb'

class Game
    def initialize
        @player = Player.new
        @menu = Menu.new("Play","About","Quit")
        @ht_menu = Menu.new("Heads","Tails","Quit")
    end

    def start
        @menu.print_initial_menu
        while(choice = @menu.get_menu_choice)
            case choice 
            when 1
                puts "Let's play!"
                break
            when 2
                @menu.print_about_game
            when @menu.length_quit
                exit(0)
            end
        end

        
        @menu.print_choice_menu
       
        while(ht_choice = @ht_menu.get_menu_choice)
            case ht_choice
            when 1
                puts "You picked heads!"
                break
            when 2
                puts "You picked tails!"
                ht_choice = 0  # h = 1 t = 0
                break
            when @ht_menu.length_quit
                exit(0)
            end
        end

        #@play = Play.new(ht_choice)

    end

end
