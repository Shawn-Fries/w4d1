require_relative "piece.rb"
require_relative "Rook.rb"
class Board
    attr_reader :rows

    def initialize
        @rows = Array.new(8){Array.new(8)}
        p @rows[0]
        p @rows[0,0]
        p @rows[0][0]
        @rows[0][0] = Rook.new(:white, self, [0,0])
        @rows[0][7] = Rook.new(:white, self, [0,7])
        @rows[7][0] = Rook.new(:black, self, [7,0])
        @rows[7][7] = Rook.new(:black, self, [7,7])

        @rows[0][2] = Bishop.new(:white, self, [0,2])
        @rows[0][5] = Bishop.new(:white, self, [0,5])
        @rows[7][2] = Bishop.new(:black, self, [7,2])
        @rows[7][5] = Bishop.new(:black, self, [7,5])

        @rows[0][3] = Queen.new(:white, self, [0,3])
        @rows[7][3] = Queen.new(:black, self, [7,3])




    end

    def [](pos)
        # row, col = pos
        @rows[pos.first][pos.last]
    end

    def []=(pos, value)
        @rows[pos.first][pos.last] = value
    end

    def move_piece(color, start_pos, end_pos)
        raise "no piece in that location" if @rows[start_pos.first][start_pos.last] == nil
        raise "invalid move" unless valid_pos?(end_pos)
        @rows[end_pos.first][end_pos.last] = @rows[start_pos.first][start_pos.last]
        @rows[start_pos.first][start_pos.last] = nil

    end

    def valid_pos?(pos)
        row, col = pos
        return false if row < 0 or row > 7
        return false if col < 0 or col > 7
        true
    end

    def add_piece(piece, pos)
        @board[pos] = piece
    end
end