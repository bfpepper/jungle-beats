require "pry"

require "./lib/node"

class LinkedList

  attr_reader :head

  def append(sound)
    if @head == nil
      @head = Node.new(sound)
    else
      @head.next_node = Node.new(sound)
    end
  end

  def count
    if @head == nil
      count = 0
    else
      current_node = @head.next_node
      count = 1
      until current_node.nil?
        count += 1
        current_node = current_node.next_node
      end
    end
    count
  end

  def to_string
    string = ""
    string << @head.data
    current_node = @head.next_node
    until current_node == nil
      string << " " + current_node.data
      current_node = current_node.next_node
    end
    string
  end

  def prepend(sound)
    old_head = @head
    @head = Node.new(sound)
    @head.next_node = old_head
  end

  def insert(position, sound)
    current_node = @head
    count = 1
    if count == position
      old_node = current_node.next_node
    end
    until count == position
      current_node = current_node.next_node
      count += 1
      old_node = current_node.next_node
    end
    current_node.next_node = Node.new(sound)
    new_node_3 = current_node.next_node
    new_node_3.next_node = old_node
    #rename all *node varialbles
  end

  def find(start_position, number_of_positions)
    
  end

end

# > list.to_string
# => "deep woo shi shu blop"
# > list.find(2, 1)
# => "shi"
# > list.find(1, 3)
# => "woo shi shu"
# > list.includes?("deep")
# => true
# > list.includes?("dep")
# => false
# > list.pop
# => "blop"
# > list.pop
# => "shu"
# > list.to_string
# => "deep woo shi"
