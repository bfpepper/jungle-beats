class Node

  attr_reader :data, :next_node

  def initialize(sound = nil, next_node = nil)
    @next_node = next_node
    @data = sound
  end

end
