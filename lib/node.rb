class Node

  attr_reader :data
  attr_accessor :next_node

  def initialize(sound = nil)
    @next_node = nil
    @data = sound
  end

end
