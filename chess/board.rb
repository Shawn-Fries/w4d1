class Board


    def initialize
        @rows = Array.new(8){Array.new(8)}

    end

    def [](pos)
        row, col = pos
    end

    def []=(pos, value)
        pos = [value]
    end

    def move_piece(color, start_pos, end_pos)
        raise "no piece in that location" if @rows[start_pos.first][start_pos.last] == nil
        raise "invalid move" unless valid_pos?(end_pos)
        @rows[end_pos.first][end_pos.last] = @rows[start_pos.first][start_pos.last]
        @rows[start_pos.first][start_pos.last] = nil

    end

    def valid_pos?(pos)
        row, col = pos
        return false if row < 0 or row > 8
        return false if col < 0 or col > 8
    end

    def add_piece(piece, pos)
        pos = [piece]
    end
end