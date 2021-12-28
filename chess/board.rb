require_relative "piece.rb"
require_relative "Rook.rb"
class Board
    attr_reader :rows

    def initialize
        @rows = Array.new(8){Array.new(8)}
        p @rows
        @rows[0][0] = Rook.new(:white, self, [0,0])


    end

    def [](pos)
        # row, col = pos
        @rows[pos.first][pos.last]
    end

    def []=(pos, value)
        @rows[pos] = value
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