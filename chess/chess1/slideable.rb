module Slideable
    
HORIZONTAL_DIRS = [
    [:dx, :dy],
    [:dx, :dy],
    [:dx, :dy],
    [:dx, :dy]
].freeze

DIAGONAL_DIRS = [
    [:dx, :dy],
    [:dx, :dy],
    [:dx, :dy],
    [:dx, :dy]
].freeze

def horizontal_dirs
    horizontal_dirs
end

def diagonal_dirs
    diagonal_dirs
end

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
        invalid = false
        i = 0
          until invalid
            
            if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                moves << self[@pos.first - i, @pos.last] 
            else 
                invalid = true
            end
            i += 1
        end
        invalid = false
        i = 0
          until invalid
            
            if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                moves << self[@pos.first, @pos.last + i] 
            else 
                invalid = true
            end
            i += 1
        end
        invalid = false
        i = 0
          until invalid
            
            if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                moves << self[@pos.first, @pos.last - i] 
            else 
                invalid = true
            end
            i += 1
        end
    end
    if move_dirs.include?("diagonal")
        invalid = false
        i = 0
        until invalid
            
            if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                moves << self[@pos.first + i, @pos.last + i] 
            else 
                invalid = true
            end
            i += 1
        end
        invalid = false
        i = 0
          until invalid
            
            if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                moves << self[@pos.first - i, @pos.last - i] 
            else 
                invalid = true
            end
            i += 1
        end
        invalid = false
        i = 0
          until invalid
            
            if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                moves << self[@pos.first + i, @pos.last - i] 
            else 
                invalid = true
            end
            i += 1
        end
        invalid = false
        i = 0
          until invalid
            
            if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                moves << self[@pos.first - i, @pos.last + i] 
            else 
                invalid = true
            end
            i += 1
        end
    end
end
    
end