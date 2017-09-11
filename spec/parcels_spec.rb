require 'parcels'
require 'rspec'

describe 'template' do

  it("volume returns '30' if the width is 5, the length is 3 and the height is 2") do
    volume = Package.new(5, 3, 2, 0)
    expect(volume.find_volume).to(eq(30))
  end

  it("volume returns '36018' if the width is 29, the length is 54 and the height is 23") do
    volume = Package.new(29, 54, 23, 0)
    expect(volume.find_volume).to(eq(36018))
  end

  it("cost returns '30' if the width is 8, the length is 4, the height is 6 and the weight is 20") do
    cost = Package.new(8, 4, 6, 20)
    expect(cost.cost_to_ship).to(eq(48))
  end

  it("cost returns '30' if the width is 12, the length is 19, the height is 84 and the weight is 97") do
    cost = Package.new(12, 19, 84, 97)
    expect(cost.cost_to_ship).to(eq(4788))
  end

end
