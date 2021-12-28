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
            grow_unblocked_moves_in_dir(1,0)
            grow_unblocked_moves_in_dir(-1,0)
            grow_unblocked_moves_in_dir(0,1)
            grow_unblocked_moves_in_dir(0,-1)
        end
            
        if move_dirs.include?("diagonal")
            grow_unblocked_moves_in_dir(1,1)
            grow_unblocked_moves_in_dir(1,-1)
            grow_unblocked_moves_in_dir(-1,-1)
            grow_unblocked_moves_in_dir(-1,1)
        end
    end


    def grow_unblocked_moves_in_dir(dx, dy)
        invalid = false
            i = 0
            until invalid
                if @board.valid_pos?([@pos.first + dx * i, @pos.last + dy * i]) &&
                     (@board[@pos.first + dx * i, @pos.last + dy * i] == nil || @board[@pos.first + dx * i, @pos.last + dy * i].color != @color)
                    moves << [@pos.first + dx * i, @pos.last + dy * i] 
                    invalid = true if @board[@pos.first + dx * i, @pos.last + dy * i].color != @color
                else 
                    invalid = true
                end
                i += 1
            end

    end




end

