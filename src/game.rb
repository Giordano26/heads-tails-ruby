require './player.rb'
require './menu.rb'
#require './play.rb'

class Game
    def initialize
        @player = Player.new
        @menu = Menu.new("Play","About","Quit")
        #@play = Play.new
    end

    def start
        @menu.print_initial_menu
        while((choice = @menu.get_menu_choice))
            case choice 
            when 1
                "Let's play!"
            when 2
                @menu.print_about_game
            when @menu.length_quit
                exit(0)
            end
        end

    end

end
