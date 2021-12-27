module Slideable
    
    def moves
        moves = []
        if move_dirs.include?("horizontal")
            invalid = false
            i = 0

            until invalid
                
                if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                    moves << self[@pos.first + i, @pos.last] 
                else 
                    invalid = true
                end
                i += 1
            end
        end
    end
    
end