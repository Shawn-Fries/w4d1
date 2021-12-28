require_relative "chess1/stepable.rb"
class King < Piece
    include Stepable
    attr_reader :color, :pos
    def initialize(color, board, pos)
        super
    end

    def symbol
        :K
        # self.color
    end

    def moves
        possible_move = []
        possible_move << [pos.first - 2, pos.last - 1] 
        possible_move << [pos.first - 2, pos.last + 1]
        possible_move << [pos.first - 1, pos.last - 2]
        possible_move << [pos.first - 1, pos.last + 2]  
        possible_move << [pos.first + 2, pos.last - 1] 
        possible_move << [pos.first + 2, pos.last + 1] 
        possible_move << [pos.first + 1, pos.last - 2]
        possible_move << [pos.first + 1, pos.last + 2]  
        possible_move.select { 
            |move| move.first >= 0 && move.first < 8 && 
            move.last >= 0 && move.last <8 
                && (board[move] == nil || board[move].color != color)
        }

    end

end