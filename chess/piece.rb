class Piece
    def initialize(color, board, pos)
     
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        
    end

    def empty?(pos)
        return true if @board[pos.first, pos.last] == nil
        false
    end

    def valid_moves
        # if self.empty?
        #     Piece = 
    end

end