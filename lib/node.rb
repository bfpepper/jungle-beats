class Node

  attr_reader :data, :next_node

  def initialize(sound = nil, next_node = nil)
    @data = sound
    @next_node = next_node
  end

end
