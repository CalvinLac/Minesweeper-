require 'pry'

class Player
attr_accessor :name, :coord

  def initialize(name)
    @name = name
    @coord
  end

  def get_coord
    puts "Please pick a coordinate in the format (xy)"
    final_coord = []
    tempcoord = gets.chomp 
    # check_format(tempcoord)
    coordinates = tempcoord.split('')
    final_coord<<coordinates[0].to_i
    final_coord<<coordinates[1].to_i
    print final_coord
    return final_coord
  end

  def coordinates
    @coord=get_coord
  end

end
