require ('sinatra')
require ('sinatra/reloader')
require ('./lib/parcels')

get'/' do
  erb :input
end

get'/output' do
  @width = params.fetch('width')
  @length = params.fetch('length')
  @height = params.fetch('height')
  @weight = params.fetch('weight')
  package = Package.new(@width.to_i, @length.to_i, @height.to_i, @weight.to_i)
  @volume = package.find_volume
  @ship = package.cost_to_ship
  erb :output
end
