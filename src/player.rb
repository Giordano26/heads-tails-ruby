require './scoreboard.rb'
class Player
    
    attr_reader :playerscore
    def initialize
        @playerscore = Scoreboard.new
    end
end
