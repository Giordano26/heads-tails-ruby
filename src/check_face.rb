class CheckFace

    def initialize(*check_args)
        @check_args = check_args
    end

    def start
        @check_args.each_with_index do |item,index|
            case index
            when 0
                player_face = item
            when 1 
                sorted_face = item
            end
        end

        if player_face == sorted_face
            result = 1
            return result
        else 
            result = 0
            return result
        end

    end

end
