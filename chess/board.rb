class Board


    def initialize
        @rows = Array.new(8){Array.new(8)}

    end

    def move_piece(start_pos, end_pos)
        raise "no piece in that location" if @rows[start_pos.first][start_pos.last] == nil
        raise "invalid move" unless valid_pos?(end_pos)
        @rows[end_pos.first][end_pos.last] = @rows[start_pos.first][start_pos.last]
        @rows[start_pos.first][start_pos.last] = nil

    end

    def valid_pos?
        
    end
end