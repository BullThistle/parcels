class Package
  def initialize(width, length, height, weight)
    @width = width
    @length = length
    @height = height
    @weight = weight
  end
  def find_volume
    @width * @length * @height
  end
  def cost_to_ship
    find_volume / 4
  end
end
