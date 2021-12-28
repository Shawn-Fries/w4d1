require_relative "chess1/slideable.rb"
class Rook < Piece
    include slideable
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