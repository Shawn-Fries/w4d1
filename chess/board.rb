require_relative "piece.rb"
require_relative "Rook.rb"
require_relative "bishop.rb"
require_relative "queen.rb"
require_relative "king.rb"
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

        @rows[0][4] = King.new(:white, self, [0,4])
        @rows[7][4] = King.new(:black, self, [7,4])

        @rows[0][1] = Knight.new(:white, self, [0,1])
        @rows[0][6] = Knight.new(:white, self, [0,6])
        @rows[7][1] = Knight.new(:black, self, [7,1])
        @rows[7][6] = Knight.new(:black, self, [7,6])

        @rows[1][0] = Pawn.new(:white, self, [1,0])
        @rows[1][1] = Pawn.new(:white, self, [1,1])
        @rows[1][2] = Pawn.new(:white, self, [1,2])
        @rows[1][3] = Pawn.new(:white, self, [1,3])
        @rows[1][4] = Pawn.new(:white, self, [1,4])
        @rows[1][5] = Pawn.new(:white, self, [1,5])
        @rows[1][6] = Pawn.new(:white, self, [1,6])
        @rows[1][7] = Pawn.new(:white, self, [1,7])

        @rows[6][0] = Pawn.new(:black, self, [6,0])
        @rows[6][1] = Pawn.new(:black, self, [6,1])
        @rows[6][2] = Pawn.new(:black, self, [6,2])
        @rows[6][3] = Pawn.new(:black, self, [6,3])
        @rows[6][4] = Pawn.new(:black, self, [6,4])
        @rows[6][5] = Pawn.new(:black, self, [6,5])
        @rows[6][6] = Pawn.new(:black, self, [6,6])
        @rows[6][7] = Pawn.new(:black, self, [6,7])


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