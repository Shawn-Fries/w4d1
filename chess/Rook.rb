require_relative "chess1/slideable.rb"
require_relative "piece.rb"

class Rook < Piece
    include Slideable
    attr_reader :color, :pos
    def initialize(color, board, pos)
        super
    end

    def symbol
        :R
        # self.color
    end

    def move_dirs(pos)
        ["horizontal"]
    end
end