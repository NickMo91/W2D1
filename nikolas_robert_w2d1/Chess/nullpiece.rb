require "singleton"
require "piece"

class NullPiece < Piece
  include Singleton

  def initialize
    super
  end

  def moves
  end

  def symbol
  end

end