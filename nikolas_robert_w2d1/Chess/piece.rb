require_relative "board"
require 'colorize'
class Piece
  # def initialize(color, board, pos)
  #   @color = color
  #   @board = board
  #   @pos = pos 
    
  # end

  def to_s
    "Piece"
  end

  def inspect
    "Pie".chomp.colorize(:yellow)
  end

  # def empty?
  # end

  # def valid_moves
  # end

  # def pos=(val)
  # end

  # def symbol
  # end

  # private
  
  # def move_into_check?(end_pos)
  # end

end

