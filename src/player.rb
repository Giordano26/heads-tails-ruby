require './scoreboard.rb'
class Player
    
    attr_reader :playerscore
    attr_accessor :lifes
    def initialize
        @playerscore = Scoreboard.new
        @lifes = 3
    end
end
