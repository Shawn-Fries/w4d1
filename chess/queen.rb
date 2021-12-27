class Queen < Piece
    attr_reader :color, :pos
    def initialize(color, board, pos)
        super
    end

    def symbol(color)
        self.color
    end

    def move_dirs(pos)

    end
end