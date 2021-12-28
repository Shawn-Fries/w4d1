require_relative "chess1/stepable.rb"
class Pawn < Piece
    attr_reader :color, :pos
    def initialize(color, board, pos)
        super
    end

    def symbol
        :P
        # self.color
    end

    def moves
        possible_move = []
        if self.color == :white
            possible_move << [pos.first + 1, pos.last] 
        else 
            possible_move << [pos.first - 1, pos.last] 
        end
        
        possible_move.select do |move|
            move.first >= 0 && move.first < 8 && move.last >= 0 && move.last <8 && (board[move] == nil || board[move].color != color)
        end

    end

end