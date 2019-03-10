class Card
  attr_accessor :shape, :color, :fill, :count

  def initialize(shape, color, fill, count)
    @shape = shape
    @color = color
    @fill = fill
    @count = count
  end
end
