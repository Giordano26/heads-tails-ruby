require './face.rb'

class FlipCoin

    attr_reader :result_face

    def initialize
        @face = Face.new
        @result_face = -1
    end

    def start
        @result_face = [@face.heads,@face.tails].sample
        return @result_face
    end
end
