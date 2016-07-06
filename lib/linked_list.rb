require "pry"

require "./lib/node"

class LinkedList

  attr_reader :head

  def initialize
    @head
  end

  def append(sound)
    if @head == nil
      @head = Node.new(sound)
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(sound)
    end
    sound
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
    until count == start_position
      current_node = current_node.next_node
      count += 1
    end
    count = 1
    found << current_node.data
    current_node = current_node.next_node
    until count == number_of_positions
      found << " " + current_node.data
      current_node = current_node.next_node
      count += 1
    end
    found
  end

  def includes?(sound)
    sounds = to_string
    sounds.include?(sound)
  end

  def pop
    current_node = @head.next_node
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    popped_value = current_node.next_node.data
    current_node.next_node = nil
    popped_value
  end

end
