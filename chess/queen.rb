require_relative "chess1/slideable.rb"
class Queen < Piece
    include slideable
    attr_reader :color, :pos
    def initialize(color, board, pos)
        super
    end

    def symbol
        :Q
        # self.color
    end

    def move_dirs(pos)
        ["horizonal"]
    end
end