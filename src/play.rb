require './flip_coin.rb'
require './check_face.rb'


class Play

    def initialize(choose_face)
        @choose_face = choose_face #h = 1 t = 0
        @result_face = FlipCoin.new
    end

    def start
       @result_face = @result_face.start
       @check_face = CheckFace.new(@choose_face,@result_face)
       @game_state = @check_face.start
       return @game_state

    end


end
