require_relative "piece"
require "byebug"

class Board
  def initialize
    @rows= Array.new(8) {Array.new(8)}
    @sentinel = nil
    (0..7).each {|row|
      (0..7).each {|col|
        pos = [row, col]
        if row == 0 || row == 1 || row == 6 || row == 7
          add_piece(Piece.new, pos)
        else
          add_piece(nil, pos)
        end
      }
    }
    
  end
  attr_accessor :rows, :sentinel

  def [](pos)#getter
    x, y = pos
    rows[x][y]
  end

  def []=(pos, val)#setter
    x, y = pos
    rows[x][y] = val
  end

  def move_piece(start_pos, end_pos)
    # debugger
    # raise InvalidMoveError if self.rows[start_pos].nil? || !self.rows[end_pos].nil?
    temp = self[start_pos]
    self[end_pos] = temp 
    self[start_pos] = nil
  end

  def valid_pos?(pos)
    #raise error 
  end
  def add_piece(piece, pos)
    # debugger
    self[pos] = piece
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end


  def piece
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end

 
end
