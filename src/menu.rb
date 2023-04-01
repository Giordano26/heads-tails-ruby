class Menu

    attr_reader :length_quit

    def initialize(*menu_args)
        @menu_args = menu_args
        @length_quit = @menu_args.length
    end

    def get_menu_choice #choice = menu.get_menu_choice
        @menu_args.each_with_index do|item,index|

        puts "#{index+1}. #{item}"
        end
    
        print "Choose an option:"
        user_choice = gets.to_i

        return user_choice
    end

    def just_print_menu
        @menu_args.each_with_index do|item,index|

            puts "#{index+1}. #{item}"
            end
    end

    def print_initial_menu
        puts "============== BLINDER HEADS AND TAILS GAME V1.0 =============="
        puts "Welcome to heads and tails game"
        puts "Please select an option:"
    end


    def print_about_game
        puts
        puts "This is a simple heads or tails game"
        puts "where you pick your choice and let fate"
        puts "decides which one will be the winner"
        puts "developed by blinder inc."
        puts
    end

    def print_choice_menu
        puts "Pick your side:"
    end
end

# while((choice = menu.get_menu_choice) != menu.length_quit)
# case choice    

