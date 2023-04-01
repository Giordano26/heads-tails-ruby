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
    end

    def just_print_menu
        @menu_args.each_with_index do|item,index|

            puts "#{index+1}. #{item}"
            end
    end

    
end

# while((choice = menu.get_menu_choice) != menu.length_quit)
# case choice