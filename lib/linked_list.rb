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
    original_head = @head
    @head = Node.new(sound)
    @head.next_node = original_head
  end

  def insert(position, sound)
    current_node = @head
    count = 1
    if count == position
      original_node = current_node.next_node
    end
    until count == position
      current_node = current_node.next_node
      count += 1
      original_node = current_node.next_node
    end
    current_node.next_node = Node.new(sound)
    newly_made_node = current_node.next_node
    newly_made_node.next_node = original_node
  end

  def find(start_position, number_of_positions)
    found = ""
    current_node = @head
    count = 0
    #gets me to the start_position
    until count == start_position
      current_node = current_node.next_node
      count += 1
    end
    #needs to get the number of nodes.data
    count = 0
    until count == number_of_positions
      current_node = current_node.next_node
      found << current_node.data
      count += 1
    end
    found
    #same basic logic as insert method
  end

end

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
