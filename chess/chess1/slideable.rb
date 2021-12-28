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
                    moves << [@pos.first + i, @pos.last] 
                    invalid = true if @board[@pos.first + i, @pos.last].color != @color
                else 
                    invalid = true
                end
                i += 1
            end
            invalid = false
            i = 0
            until invalid
                
                if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                    moves << [@pos.first - i, @pos.last] 
                else 
                    invalid = true
                end
                i += 1
            end
            invalid = false
            i = 0
            until invalid
                
                if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                    moves << [@pos.first, @pos.last + i] 
                else 
                    invalid = true
                end
                i += 1
            end
            invalid = false
            i = 0
            until invalid
                
                if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                    moves << [@pos.first, @pos.last - i] 
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
                    moves << [@pos.first + i, @pos.last + i] 
                else 
                    invalid = true
                end
                i += 1
            end
            invalid = false
            i = 0
            until invalid
                
                if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                    moves << [@pos.first - i, @pos.last - i] 
                else 
                    invalid = true
                end
                i += 1
            end
            invalid = false
            i = 0
            until invalid
                
                if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                    moves << [@pos.first + i, @pos.last - i] 
                else 
                    invalid = true
                end
                i += 1
            end
            invalid = false
            i = 0
            until invalid
                
                if @board.valid_pos?(@pos) && (@board[@pos] == nil || @board[@pos].color != @color)
                    moves << [@pos.first - i, @pos.last + i] 
                else 
                    invalid = true
                end
                i += 1
            end
        end
    end


    def grow_unblocked_moves_in_dir(dx, dy)
        invalid = false
            i = 0
            until invalid
                if @board.valid_pos?([@pos.first + dx, @pos.last + dy]) && (@board[@pos.first + dx, @pos.last + dy] == nil || @board[@pos.first + dx, @pos.last + dy].color != @color)
                    moves << [@pos.first + dx, @pos.last + dy] 
                    invalid = true if @board[@pos.first + dx, @pos.last + dy].color != @color
                else 
                    invalid = true
                end
                i += 1
            end

    end



end

