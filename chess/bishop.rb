require_relative "chess1/slideable.rb"
class Bishop < Piece
    include Slideable
    attr_reader :color, :pos
    def initialize(color, board, pos)
        super
    end

    def symbol
        :B
        # self.color
    end

    def move_dirs(pos)
        ["diagonal"]
    end
end