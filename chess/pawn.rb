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
            possible_move << [pos.first + 2, pos.last] if at_start_row?
            if @board.rows[pos.first + 1, pos.last + 1].color == :black
                possible_move << [pos.first + 1, pos.last + 1] 
            end

            if @board.rows[pos.first + 1, pos.last - 1].color == :black
                possible_move << [pos.first + 1, pos.last - 1] 
            end
        else 
            possible_move << [pos.first - 1, pos.last] 
            possible_move << [pos.first - 2, pos.last] if at_start_row?

            if @board.rows[pos.first - 1, pos.last + 1].color == :white
                possible_move << [pos.first - 1, pos.last + 1] 
            end

            if @board.rows[pos.first - 1, pos.last - 1].color == :white
                possible_move << [pos.first - 1, pos.last - 1] 
            end
        end
        
        possible_move.select do |move|
            move.first >= 0 && move.first < 8 && move.last >= 0 && move.last <8 && (board[move] == nil || board[move].color != color)
        end

    end
    
    def at_start_row?
        (self.color == :white && self.pos.first == 1 ) || (self.color == :black && self.pos.first == 6)
    end


end