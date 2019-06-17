require_relative "board"
require "colorize"

class Display
  def initialize(board)
    @board = board
  end

  attr_accessor :board

  def render
    # puts "  #{(0...board.size).to_a.join(' ')}"
    # rows.each_with_index do |row, i|
    #   puts "#{i} #{row.join(' ')}"
    # end
    # board.each do |row|
    #   row.each do |ele|
    #     p ele
    #   end
    # end
    (0..7).each {|idx1|
      (0..7).each {|idx2|
        p board[[idx1, idx2]]
      }
      
    }
  end
end


if __FILE__ == $PROGRAM_NAME
  b = Board.new
  b.move_piece([0, 1], [3, 1])
  p b
  d = Display.new(b)
  d.render
end